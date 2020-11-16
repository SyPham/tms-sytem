﻿using Data;
using Data.Models;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Service.Helpers;
using Service.Hub;
using Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Implement
{
    public class ChatService : IChatService
    {
        private readonly IHubContext<WorkingManagementHub> _hubContext;
        private readonly DataContext _context;
        private readonly IConfiguration _configuaration;
        public ChatService(
            DataContext context, 
            IHubContext<WorkingManagementHub> hubContext,
            IConfiguration configuaration
            )
        {
            _context = context;
            _hubContext = hubContext;
            _configuaration = configuaration;
        }

        public async Task<object> AddMessageGroup(int roomid, string message)
        {
            try
            {
                var project = await _context.Projects.FirstOrDefaultAsync(x => x.Room.Equals(roomid));
                var managers = await _context.Managers.Where(x => x.ProjectID.Equals(project.ID)).Select(x => x.UserID).ToListAsync();
                var members = await _context.TeamMembers.Where(x => x.ProjectID.Equals(project.ID)).Select(x => x.UserID).ToListAsync();
                var listAll = managers.Union(members);
                var listChats = new List<Chat>();
                var listParticipants = new List<Participant>();
                foreach (var user in listAll)
                {
                    listChats.Add(new Chat
                    {
                        Message = message,
                        UserID = user,
                        ProjectID = project.ID,
                        RoomID = roomid
                    });
                    listParticipants.Add(new Participant
                    {
                        UserID = user,
                        RoomID = roomid
                    });
                }
                await _context.AddRangeAsync(listParticipants);
                await _context.AddRangeAsync(listChats);
                await _context.SaveChangesAsync();

                return true;
            }
            catch
            {
                return false;
                throw;
            }
            throw new NotImplementedException();
        }

        public async Task<object> GetAllMessageByRoomAndProject(int roomid)
        {
            var userModel = _context.Users;
            var uploadImages = _context.UploadImages;
            var appSettings = _configuaration.GetSection("AppSettings").Get<AppSettings>();
            return await _context.Chats.Where(x => x.RoomID.Equals(roomid)).Select(x => new Data.ViewModel.Chat.Chat
            {
                UserID = x.UserID,
                Message = x.Message,
                CreatedTime = x.CreatedTime,
                RoomID = x.RoomID,
                ProjectID = x.ProjectID,
                ImageBase64 = userModel.FirstOrDefault(_ => _.ID.Equals(x.UserID)).ImageBase64,
                Images = uploadImages.Where(_ => _.ChatID == x.ID).Select(_ => appSettings.applicationUrl + "/images/chats/" +_.Image).ToList(),
                Username = userModel.FirstOrDefault(_ => _.ID.Equals(x.UserID)).Username.ToTitleCase()
            }).ToListAsync();
        }
        public async Task<Chat> AddMessageGroup(int roomid, string message, int userid)
        {
            try
            {
                var project = await _context.Projects.FirstOrDefaultAsync(x => x.Room.Equals(roomid));
                var managers = await _context.Managers.Where(x => x.ProjectID.Equals(project.ID)).Select(x => x.UserID).ToListAsync();
                var members = await _context.TeamMembers.Where(x => x.ProjectID.Equals(project.ID)).Select(x => x.UserID).ToListAsync();
                var listAll = managers.Union(members);
                var listChats = new List<Chat>();
                var listParticipants = new List<Participant>();

                //Neu chua co participan thi them vao
                if (!await _context.Participants.AnyAsync(x => x.RoomID == roomid))
                {
                    foreach (var user in listAll)
                    {
                        listParticipants.Add(new Participant
                        {
                            UserID = user,
                            RoomID = roomid
                        });
                    }
                    await _context.AddRangeAsync(listParticipants);
                }
                var chat = new Chat
                {
                    Message = message,
                    UserID = userid,
                    ProjectID = project.ID,
                    RoomID = roomid
                };
                //add message userid
                await _context.AddAsync(chat);
                await _context.SaveChangesAsync();
                await _hubContext.Clients.Group(chat.RoomID.ToString()).SendAsync("ReceiveMessageGroup", chat.RoomID.ToInt());
                return chat;
            }
            catch 
            {
                return new Chat();
                throw;
            }
            throw new NotImplementedException();
        }

        public Task<int> JoinGroup(int projectid)
        {
            //if (!await _context.Projects.AnyAsync(x => x.ID.Equals(projectid)))
            //{
            //    return 0;
            //}
            //if (await _context.Rooms.AnyAsync(x => x.ProjectID.Equals(projectid)))
            //{
            //    return (await _context.Rooms.FirstOrDefaultAsync(x => x.ProjectID.Equals(projectid))).ID;
            //}
            //else
            //{
            //    var project = await _context.Rooms.FirstOrDefaultAsync(x => x.ProjectID.Equals(projectid));
            //    var room = new Room
            //    {
            //        ProjectID = project.ID,
            //        Name = project.Name
            //    };
            //    await _context.AddAsync(room);
            //    await _context.SaveChangesAsync();
            //    return room.ID;
            //}
            throw new NotImplementedException();
        }

        public Task<object> Remove(int projectid, int roomid)
        {
            throw new NotImplementedException();
        }
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }

        public async Task<bool> UploadImage(List<UploadImage> uploadImages)
        {
            var imagesList = new List<UploadImage>();
            foreach (var item in uploadImages)
            {
                imagesList.Add(new UploadImage
                {
                    ChatID = item.ChatID,
                    Image = item.Image
                });
            }
            try
            {
                await _context.AddRangeAsync(imagesList);
                await _context.SaveChangesAsync();
                return true;
            }
            catch (Exception)
            {
                return false;
                throw;
            }


            throw new NotImplementedException();
        }
    }
}
