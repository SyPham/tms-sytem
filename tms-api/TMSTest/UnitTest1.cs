using AutoMapper;
using Data;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Moq;
using NUnit.Framework;
using Service.AutoMapper;
using Service.Hub;
using Service.Implement;
using System;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TMS;
using TMS.Helpers;

namespace TMSTest
{
    [TestFixture]
    public class TaskServiceTests
    {
        private DataContext _context;
        private TaskService _taskService;
        private ProjectService _projectService;
        private LineService _lineService;
        private OCService _oCService;
        private UserService _userService;
        private NotificationService _notificationService;
        private DbContextOptionsBuilder<DataContext> _builder;
        private ServiceProvider _serviceProvide;
        [SetUp]
        public void Setup()
        {
            var services = new ServiceCollection();
            services
                .AddDbContext<DataContext>(options => options.UseSqlServer("Server=10.4.0.9;Database=tms;User Id=sa;Password=shc@1234;"),
                    ServiceLifetime.Transient);
            services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
            //Auto Mapper
            services.AddAutoMapper(typeof(Startup));
            services.AddScoped<IMapper>(sp =>
            {
                return new Mapper(AutoMapperConfig.RegisterMappings());
            });
            services.AddSingleton(AutoMapperConfig.RegisterMappings());

            _serviceProvide = services.BuildServiceProvider();

            //var mockConfSection = new Mock<IConfigurationSection>();
            //mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "notifyUrl")]).Returns("https://notify-api.line.me/api/notify");
            //mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "tokenUrl")]).Returns("https://notify-bot.line.me/oauth/token");
            //mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "client_id")]).Returns("HF6qOCM9xL4lXFsqOLPzhJ");
            //mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "client_secret")]).Returns("d2V4HdBdAP2JGByzOtZuIx5LkQfEhiXx8IFZlxIiPEy");
            //mockConfSection.SetupGet(m => m[It.Is<string>(s => s == "redirect_uri")]).Returns("http://localhost:1000/api/LineNotify/Callback");
            //var mockConfiguration = new Mock<IConfiguration>();
            //mockConfiguration.Setup(a => a.GetSection(It.Is<string>(s => s == "LineNotifyConfig"))).Returns(mockConfSection.Object);

            //var conn = "Server=10.4.0.9;Database=tms;User Id=sa;Password=shc@1234;";
            //_builder = new DbContextOptionsBuilder<DataContext>()
            //.UseSqlServer(conn);
            //_context = new DataContext(_builder.Options);

            //Mock<IMapper> mapperMock = new Mock<IMapper>();
            //var config = new MapperConfiguration(cfg =>
            //{
            //    cfg.AddProfile(new AutoMapperProfile());
            //});
            //var mapper = mapperMock.Object;
            //mapper = config.CreateMapper();
            //Mock<IHubContext<WorkingManagementHub>> hubContext = new Mock<IHubContext<WorkingManagementHub>>();
            //_lineService = new LineService(mockConfiguration.Object);
            //_notificationService = new NotificationService(_context, config, _lineService);
            //_projectService = new ProjectService(_context, mapper, _notificationService);
            //_oCService = new OCService(_context, mapper);
            //_userService = new UserService(_context, mapper);
            //_taskService = new TaskService(_context, _notificationService,mapper, _userService, hubContext.Object, _projectService, mockConfiguration.Object, _oCService);

        }

        [Test]
        public async Task Todolist()
        {
            using var context = _serviceProvide.GetService<DataContext>();
            var users = await context.Users.FirstOrDefaultAsync(x => x.Username.ToLower() == "admin");
            Assert.That(users.ID, Is.EqualTo(1));

        }
    }
}