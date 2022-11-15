using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using PlayerIO.GameLibrary;
using System.Drawing;

namespace Mpgame
{
    public class Player : BasePlayer
    {
        public string fbname = "";
        public string split1 = ";";
        public string headItem = "none";
        public string split3 = ";";
        public string handItem = "none";
        public string split4 = ";";
        public string skins = "none";
        public string split5 = ";";
        public string shoesItem = "none";
        public string split6= ";";
        public string mouthItem = "none";
        public int inter = 1;
        public int inter1 = 2;

    }

    [RoomType("Mpgame")]
    public class GameCode : Game<Player>
    {
        public string fbuid = "";
        public String users = "";
        // This method is called when an instance of your the game is created
        public override void GameStarted()
        {
            PreloadPlayerObjects = true;
            // anything you write to the Console will show up in the 
            // output window of the development server
            Console.WriteLine("Game is started: " + RoomId);

        }

        // This method is called when the last player leaves the room, and it's closed down.
        public override void GameClosed()
        {
            Console.WriteLine("RoomId: " + RoomId);
        }

        // This method is called whenever a player joins the game
        public override void UserJoined(Player player)
        {
            PlayerIO.BigDB.LoadOrCreate("PlayerObjects", player.ConnectUserId, delegate (DatabaseObject playerobject)
            {
                player.fbname = playerobject.GetString("fbname", "");
                player.headItem = playerobject.GetString("headItem", "");
                player.handItem = playerobject.GetString("handItem", "");
                player.skins = playerobject.GetString("skins", "");
                player.shoesItem = playerobject.GetString("shoesItem", "");
                player.mouthItem = playerobject.GetString("mouthItem", "");

                foreach (Player p in Players)
                {
                    if (player.Id == p.Id)
                    {
                        p.Send("playerset", player.Id);
                    }
                    else
                    {
                        player.Send("playerset", p.Id);
                    }
                }

                addPlayersOnline(player);
            });
        }


        public void addPlayersOnline(Player player)
        {
            foreach (Player p in Players)
            {

                String name =  p.fbname;
                String split1 = p.split1;
                String hat = p.headItem;
                String split3 = p.split3;
                String hand = p.handItem;
                String split5 = p.split4;
                String skin = p.skins;
                String split6 = p.split5;
                String eye = p.shoesItem;
                String split7 = p.split6;
                String mouth = p.mouthItem;
                Message psOnline = Message.Create("addChar",name + split1 + hat + split3 + hand + split5 + skin + split6 + eye + split7 + mouth);
                //player.Send(newplayer, id, name, skin, badge, level, division, trustpts);
                player.Send(psOnline);
                if (p.Id == player.Id)
                {
                }
                else
                {
                    String name1 = player.fbname;
                    String split110 = player.split1;
                    String hat1 = player.headItem;
                    String split31 = player.split3;
                    String hand1 = player.handItem;
                    String split51 = player.split4;
                    String skin1 = player.skins;
                    String split61 = player.split5;
                    String eye1 = player.shoesItem;
                    String split71 = player.split6;
                    String mouth1 = player.mouthItem;
                    p.Send("addChar", name1+ split110+ hat1+ split31+ hand1+ split51+ skin1+ split61+ eye1+ split71+ mouth1);
                    Broadcast("startdiv", "bronze", "10", -49, 1000);

                }




            }

        }
        // This method is called when a player leaves the game
        public override void UserLeft(Player player)
        {
            //updatePlayersOnline(player);
            Broadcast("UserLeft", player.ConnectUserId, PlayerCount, users, player.Id);
        }

        // This method is called when a player sends a message into the server code
        public override void GotMessage(Player player, Message message)
        {
            switch (message.Type)
            {
                case "chatMsg":
                    string htmlText = message.GetString(0) + "<font color=\n'" + message.GetString(0) + "\'>" + message.GetString(3) + "</font>: <font color=\'" + message.GetString(2) + "\'>" + message.GetString(1) + "</font>";
                    Broadcast("chatMsg", htmlText, message.GetString(3), "");
                break;
                case "upkeyisdown_mp":
                    Broadcast("upkeyisdown_mp", player.Id, message.GetString(0));
                break;
                case "downkeyisdown_mp":
                    Broadcast("downkeyisdown_mp", player.Id, message.GetString(0));
                break;
                case "leftkeyisdown_mp":
                    Broadcast("leftkeyisdown_mp", player.Id, message.GetString(0));
                break;
                case "rightkeyisdown_mp":
                    Broadcast("rightkeyisdown_mp", player.Id, message.GetString(0));
                break;
                case "died":
                    Broadcast("died", player.Id, message.GetInt(0));
                    player.Send("died", 2, 112);
                break;
            }
        }
    }

}
