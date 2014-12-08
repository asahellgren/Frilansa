using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace frilansa
{
    public class ChatHub : Hub
    {


        static List<User> users = new List<User>();

        public void ChatMessage(string name, string message)
        {
            // Call the broadcastMessage method to update clients.
            Clients.Caller.broadcastMessageCaller(name, message);
            Clients.Others.broadcastMessageOthers(name, message);
        }

        public void RecordHit()
        {
            Clients.All.onRecordHit(users.Count);
            //Javascriptet går in i metoden RecordHit när man startar upp connection, 
            //den plussar på hitcount och skickar sedan tillbaka hitcount till alla klienter via onRecordHit (2).
        }

        public override Task OnDisconnected()
        {
            foreach (User u in users.ToList())
            {
                if (u.Id == Context.ConnectionId)
                {
                    users.Remove(u);
                }
            }

            Clients.All.allUsers(users);
            Clients.All.onRecordHit(users.Count);

            return base.OnDisconnected();
        }

        public void ActiveUsers(string name)
        {
            var user = new User();
            user.Id = Context.ConnectionId;
            user.Name = name;
            users.Add(user);
            Clients.All.allUsers(users);

        }
    }
}