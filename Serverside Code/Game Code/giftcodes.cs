using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using PlayerIO.GameLibrary;
using System.Drawing;

namespace Giftcodes
{
    public class Player : BasePlayer
    {
        public String fbid = "";
    }

    [RoomType("Giftcodes")]
    public class GameCode : Game<Player>
    {
        public string giftCode = "";
        public string secureCode = "";
        public String fbid = "";
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

            PlayerIO.BigDB.Load("ssredeemCodes", player.JoinData["giftCode"], delegate(DatabaseObject getReedeemInfo)
            {
                if (getReedeemInfo == null)//for if giftcode not exist in your bigdb
                {
                    player.Send("giftcodes", "error");
                    player.Send("errorinscratch", "This giftcode is blacklisted or not exist.");
                    player.Send("alert", player.ConnectUserId.Split('b')[1], "This giftcode is blacklisted or not exist.");
                    player.Disconnect();
                }

               /*   if (player.JoinData["secureCode"] != getReedeemInfo.GetString("secureCode", ""))//for if secureCode is invaild but giftcode exist but shows still invail/used giftcode as alert
                {
                    player.Send("GetResponse", "bad", player.JoinData["giftCode"]);
                    player.Send("ALERT", "wrong giftcode password?");
                    player.Disconnect();
                }*/
                else if (getReedeemInfo.GetString("usedby", "") == "")//for if used
                {
                    PayVault vault1 = player.PayVault;
                    vault1.Refresh(delegate()
                    {
                        vault1.Give(new BuyItemInfo[] { new BuyItemInfo(getReedeemInfo.GetString("item", "")) }, delegate() { });
                    });
                    getReedeemInfo.Set("usedby", player.ConnectUserId.Split('b')[1]);
                    getReedeemInfo.Save();
                    player.Send("giftcodes", getReedeemInfo.GetString("item", ""));
                    //player.Send("alert", mycom[1], "Disconnected!");
                    //Broadcast("UserLeft", player.ConnectUserId.Replace("fb", ""));
                    //player.Disconnect();
                }
                else
                {
                    player.Send("giftcodes", "error");
                    player.Send("errorinscratch", "this code is already used!");
                    player.Send("ALERT", player.ConnectUserId.Split('b')[1], "This code is already used!");
                    player.Disconnect();
                }

            });
        }

        // This method is called when a player leaves the game
        public override void UserLeft(Player player)
        {
        }

        // This method is called when a player sends a message into the server code
        public override void GotMessage(Player player, Message message)
        {
            switch (message.Type)
            {
            }
        }
    }

}
