using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using PlayerIO.GameLibrary;
using System.Drawing;
using System.Timers;

namespace MatchMaking
{
    public class Player : BasePlayer
    {
        public string iam = "";
        public bool onsearch = false;
        public string head = "";
        public string hands = "";
        public string mouth = "";
        public string shoes = "";
        public string charcolor = "";
        public string Name = "";
    }

    [RoomType("matchmaking")]
    public class GameCode : Game<Player>
    {
        private static System.Timers.Timer aTimer;
        // This method is called when an instance of your the game is created
        public override void GameStarted()
        {
            PreloadPlayerObjects = true;
            ScheduleCallback(delegate () { noplayers(); }, 25000);
            // anything you write to the Console will show up in the 
            // output window of the development server
            Console.WriteLine("Game is started: " + RoomId);

        }

        public void noplayers()
        {
            foreach(Player player in Players)
            {
                player.Disconnect();
            }
        }
        // This method is called when the last player leaves the room, and it's closed down.
        public override void GameClosed()
        {
            Console.WriteLine("RoomId: " + RoomId);
        }

        // This method is called whenever a player joins the game
        public override void UserJoined(Player player)
        {
                if (!player.onsearch)
                {
                    player.onsearch = true;
                    Player opponent = null;
                    var MyName = "none";
                    var MyHead = "none";
                    var MyHands = "none";
                    var MyShoe = "none";
                    var MyMouth = "none";
                    var OppName = "none";
                    var OppHead = "none";
                    var OppHands = "none";
                    var OppShoe = "none";
                    var OppMouth = "none";
                    Console.WriteLine(player);
                    if (PlayerCount >= 2)
                    {
                        foreach (Player p in Players)
                        {
                            if (p != player)
                            {
                                opponent = p;
                                break;
                            }
                        }
                    }
                    else
                    {
                        player.Send("alert", "No one found, waiting");
                    }

                    if (opponent != null)
                    {
                        Console.WriteLine("Made Match: " + player.ConnectUserId + " vs. " + opponent.ConnectUserId);
                        player.iam = "player1";
                        opponent.iam = "player2";
                        PlayerIO.BigDB.LoadOrCreate("PlayerObjects", player.ConnectUserId, delegate (DatabaseObject myname)
                        {
                            MyName = myname.GetString("fbname");
                            MyHead = myname.GetString("headItem");
                            MyHands = myname.GetString("handItem");
                            MyShoe = myname.GetString("shoesItem");
                            MyMouth = myname.GetString("mouthItem");
                            Console.WriteLine("success");
                            player.head = MyHead;
                            player.hands = MyHands;
                            player.shoes = MyShoe;
                            player.mouth = MyMouth;
                            player.Name = MyName;
                            PlayerIO.BigDB.LoadOrCreate("PlayerObjects", opponent.ConnectUserId, delegate (DatabaseObject opponentname)
                            {
                                OppName = opponentname.GetString("fbname");
                                OppHead = opponentname.GetString("headItem");
                                OppHands = opponentname.GetString("handItem");
                                OppShoe = opponentname.GetString("shoesItem");
                                OppMouth = opponentname.GetString("mouthItem");
                                opponent.head = OppName;
                                opponent.hands = OppHands;
                                opponent.mouth = OppMouth;
                                opponent.Name = OppName;
                                opponent.Send("gameFound", player.ConnectUserId, "fishzone");//id, player.ConnectUserId, opponent.ConnectUserId, him);
                                player.Send("gameFound", player.ConnectUserId, "fishzone");// id, player.ConnectUserId, opponent.ConnectUserId, him);
                                player.onsearch = false;
                                opponent.Disconnect();
                                player.Disconnect();
                            });
                        });
                }
                else
                {
                    player.Disconnect();
                }
            }

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
