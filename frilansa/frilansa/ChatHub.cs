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

        static int _hitCount = 0;
        static List<String> nameList = new List<string>(); 

        public void ChatMessage(string name, string message)
        {
            // Call the broadcastMessage method to update clients.
            Clients.All.broadcastMessage(name, message);
        }

        public void RecordHit()
        {
            _hitCount += 1;
            Clients.All.onRecordHit(_hitCount); 
            //Javascriptet går in i metoden RecordHit när man startar upp connection, 
            //den plussar på hitcount och skickar sedan tillbaka hitcount till alla klienter via onRecordHit (2).

        }

        public override Task OnDisconnected()
        {
          
            _hitCount -= 1;
            Clients.All.onRecordHit(_hitCount);
            return base.OnDisconnected();
        }

        //public void ActiveUsers(string name)
        //{
        //    nameList.Add(name);
        //     Clients.All.allUsers(nameList);
        //}
    }
}