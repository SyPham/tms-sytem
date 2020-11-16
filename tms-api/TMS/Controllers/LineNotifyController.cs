﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TMS.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LineNotifyController : ControllerBase
    {
        private readonly string _authorizeUrl;
        private readonly string _tokenUrl;

        private readonly string _clientId;
        private readonly string _clientSecret;
        private readonly string _redirectUri;
        private readonly string _state;
        private readonly string _successUri;
        readonly IConfiguration _config;
        public LineNotifyController(IConfiguration config)
        {
            _config = config;
            var lineConfig = _config.GetSection("LineNotifyConfig");

            _authorizeUrl = lineConfig.GetValue<string>("authorizeUrl");
            _tokenUrl = lineConfig.GetValue<string>("tokenUrl");
            _clientId = lineConfig.GetValue<string>("client_id");
            _clientSecret = lineConfig.GetValue<string>("client_secret");
            _redirectUri = lineConfig.GetValue<string>("redirect_uri");
            _state = lineConfig.GetValue<string>("state");
            _successUri = lineConfig.GetValue<string>("successUri");
        }
        // GET: api/Authorize
        [HttpGet]
        public IActionResult GetAuthorize()
        {
            var uri = Uri.EscapeUriString(
                _authorizeUrl + "?" +
                "response_type=code" +
                "&client_id=" + _clientId +
                "&redirect_uri=" + _redirectUri +
                "&scope=notify" +
                "&state=" + _state
            );
            Response?.Redirect(uri);

            return new EmptyResult();
        }

        // GET: api/Authorize/Callback
        /// <summary>Nhận mã người dùng </summary>
        /// <param name="code">Mã ủy quyền được sử dụng để nhận Mã thông báo truy cập</param>
        /// <param name="state">Để xác minh. Tránh các cuộc tấn công CSRF</param>
        /// <param name="error"> Thông báo lỗi</param>
        /// <param name="errorDescription">Mô tả lỗi </param>
        /// <returns></returns>
        [HttpGet]
        [Route("Callback")]
        public async Task<IActionResult> GetCallback(
            [FromQuery]string code,
            [FromQuery]string state,
            [FromQuery]string error,
            [FromQuery][JsonProperty("error_description")]string errorDescription)
        {
            if (!string.IsNullOrEmpty(error))
                return new JsonResult(new
                {
                    error,
                    state,
                    errorDescription
                });
            Response.Redirect(_successUri + "?token=" + await FetchToken(code));

            return new EmptyResult();
        }

        /// <summary>Nhận mã thông báo người dùng</summary>
        /// <param name="code">Mã ủy quyền được sử dụng để nhận Mã thông báo truy cập </param>
        /// <returns></returns>
        private async Task<string> FetchToken(string code)
        {
            using var client = new HttpClient
            {
                Timeout = new TimeSpan(0, 0, 60),
                BaseAddress = new Uri(_tokenUrl)
            };

            var content = new FormUrlEncodedContent(new[]
            {
                    new KeyValuePair<string, string>("grant_type", "authorization_code"),
                    new KeyValuePair<string, string>("code", code),
                    new KeyValuePair<string, string>("redirect_uri", _redirectUri),
                    new KeyValuePair<string, string>("client_id", _clientId),
                    new KeyValuePair<string, string>("client_secret", _clientSecret)
                });
            var response = await client.PostAsync("", content);
            var data = await response.Content.ReadAsStringAsync();

            return JsonConvert.DeserializeObject<JObject>(data)["access_token"].ToString();
        }
    }
}