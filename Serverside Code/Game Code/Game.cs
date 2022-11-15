//OPEN CHESTS
using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using PlayerIO.GameLibrary;
using System.Drawing;
using System.Text.RegularExpressions;

namespace MyGame
{
    public class Player : BasePlayer
    {
        public string Name = "Loading user";
        public bool canChat = true;
        public bool isDev = false;
        public bool isAdmin = false;
        public string myTrader = "0";
        public string OfferItem = "nooffer";
        public string Busy = "0";
        public bool isMod = false;
        public bool isVip = false;
        public string fbuid = "Loading fbuid";
        public string skin = "blue";
        public string badge = "one";
        public bool muted = false;
        public bool worthsTeamSkin;
        public bool worthsVIPskin;
        public bool chatted = false;
        public string oldMsg = "";

    }

    [RoomType("MyCode")]
    public class GameCode : Game<Player>
    {
        // This method is called when an instance of your the game is created
        public override void GameStarted()
        {
            // anything you write to the Console will show up in the 
            // output window of the development server
            Console.WriteLine("Game is started: " + RoomId);

            // This is how you setup a timer
            AddTimer(delegate
            {
                // code here will code every 100th millisecond (ten times a second)
            }, 100);

            // Debug Example:
            // Sometimes, it can be very usefull to have a graphical representation
            // of the state of your game.
            // An easy way to accomplish this is to setup a timer to update the
            // debug view every 250th second (4 times a second).
            AddTimer(delegate
            {
                // This will cause the GenerateDebugImage() method to be called
                // so you can draw a grapical version of the game state.
                RefreshDebugView();
            }, 250);
        }

        // This method is called when the last player leaves the room, and it's closed down.
        public override void GameClosed()
        {
            Console.WriteLine("RoomId: " + RoomId);
        }

        // This method is called whenever a player joins the game
        public override void UserJoined(Player player)
        {
            // this is how you send a player a message
            player.Send("hello"); PayVault pvault = player.PayVault;
            pvault.Refresh(delegate()
            { });

            // this is how you broadcast a message to all players connected to the game
            var fbname = player.JoinData["fbname"];
            var fbuid = player.ConnectUserId;
            PlayerIO.BigDB.LoadOrCreate("PlayerObjects", fbuid, delegate(DatabaseObject result)
            {
                PlayerIO.BigDB.LoadOrCreate("ByUserName", fbname, delegate(DatabaseObject bo)
                {
                        PlayerIO.BigDB.Load("AccountInfo", fbuid, delegate(DatabaseObject acc)
                        {
                            PlayerIO.BigDB.LoadOrCreate("secureDB", fbuid, delegate(DatabaseObject result3)
                            {
                                var dbfbname = result.GetString("fbname", "");
                                var dbfbuid = result.GetString("fbuid", "");
                                var dbskin = result.GetString("skin", "");
                                if (result.GetBool("Online", false) == true)
                                {
                                    Broadcast("opened", "account oppened");
                                    player.Disconnect();
                                }

                                else
                                    if (result.GetBool("Online", false) == false)
                                    {
                                        result.Set("Online", true);
                                        result.Save();
                                        if (acc == null)
                                        {
                                            Console.WriteLine("ID NOT FOUND");
                                        }
                                        if (dbfbname == "" || dbfbuid == "" || dbskin == "")
                                        {
                                            result.Set("fbname", fbname);
                                            result.Set("fbuid", fbuid);
                                            result.Set("skin", "blue");
                                            result.Set("Online", true);
                                            result.Set("rounds", 0);
                                            result.Set("CurrentLevel", 1);
                                            result.Set("CurrentXP", 0);
                                            result.Set("playTime", 0);
                                            result.Set("Die", 0);
                                            result.Set("TotalXP", 0);
                                            result.Set("highscore", 0);
                                            result.Set("XPToNextLevel", 40);
                                            result.Set("bg", "blue");
                                            result.Set("username", fbname);
                                            result.Set("skins", "none");
                                            result.Set("badge", "one");
                                            result.Set("headItem", "none");
                                            result.Set("mouthItem", "none");
                                            result.Set("achievement", new DatabaseArray());
                                            result.Set("SecondChance", 0);
                                            result.Set("handItem", "none");
                                            result.Set("shoesItem", "none");
                                            result.Save();


                                            bo.Set("fbuid", fbuid);
                                            bo.Save();
                                            result3.Set("fbname", fbname);
                                            result3.Set("ipadress", player.IPAddress + "");
                                            result3.Set("fbuid", fbuid);
                                            result3.Set("badge", "normal");
                                            result3.Set("muted", false);
                                            result3.Set("mutedby", "");
                                            result3.Set("coins", "");
                                            result3.Set("onlobby", false);
                                            result3.Set("banned", false);
                                            result3.Set("bywho", "");
                                            result3.Set("banreason", "");
                                            result3.Set("coins", pvault.Coins);
                                            pvault.Credit(1000, "New Player", delegate()
                                            {
                                                int newcoins = pvault.Coins;
                                            });
                                            result3.Save();
                                            result.Save();
                                            result3.Save();
                                            Broadcast("newUser", "LOL");
                                        }
                                        if (result3.GetBool("banned") == true)
                                        {
                                            //player.Disconnect();
                                            Broadcast("playerBanned", result3.GetString("banreason"), result3.GetString("bywho"), player.ConnectUserId);
                                            player.Disconnect();
                                        }
                                        if (result.GetString("badge").Equals("team"))
                                        {
                                            //Player.Disconnect();
                                            result3.Set("banned", true);
                                            result3.Set("banreason", "Trying to hack team badge");
                                            result3.Set("bywho", "The System!");
                                            result3.Save();
                                            Broadcast("playerBanned", result3.GetString("banreason"), result3.GetString("bywho"), player.ConnectUserId);
                                        }

                                        if (pvault.Has("team"))
                                        {
                                            if (result.GetString("badge").Equals("team"))
                                            {
                                                result3.Set("banned", false);
                                                result3.Set("bywho", "TEAM");
                                                result3.Save();
                                                Broadcast("playerBanned", result3.GetString("bywho"), player.ConnectUserId);
                                            }
                                        }
                                        if (result.GetString("badge").Equals("vip"))
                                        {
                                            //Player.Disconnect();
                                            result3.Set("banned", true);
                                            result3.Set("banreason", "Trying to hack vip badge");
                                            result3.Set("bywho", "The System!");
                                            result3.Save();
                                            Broadcast("playerBanned", result3.GetString("banreason"), result3.GetString("bywho"), player.ConnectUserId);
                                        }

                                        if (pvault.Has("vip"))
                                        {
                                            if (result.GetString("badge").Equals("vip"))
                                            {
                                                result3.Set("banned", false);
                                                result3.Set("bywho", "TEAM");
                                                result3.Save();
                                                Broadcast("playerBanned", result3.GetString("bywho"), player.ConnectUserId);
                                            }
                                        }
                                        if (result.GetString("badge").Equals("moderator"))
                                        {
                                            //Player.Disconnect();
                                            result3.Set("banned", true);
                                            result3.Set("banreason", "Trying to hack mod badge");
                                            result3.Set("bywho", "The System!");
                                            result3.Save();
                                            Broadcast("playerBanned", result3.GetString("banreason"), result3.GetString("bywho"), player.ConnectUserId);
                                        }

                                        if (pvault.Has("team"))
                                        {
                                            if (result.GetString("badge").Equals("moderator"))
                                            {
                                                result3.Set("banned", false);
                                                result3.Set("bywho", "TEAM");
                                                result3.Save();
                                                Broadcast("playerBanned", result3.GetString("bywho"), player.ConnectUserId);
                                            }

                                            /*}
                                            if (result.GetString("skins").Equals("vip") && !pvault.Has("vip"))
                                            {
                                                result3.Set("banned", true);
                                                result3.Set("banreason", "Trying to hack vip skin");
                                                result3.Set("bywho", "The System!");
                                                result3.Save();
                                                Broadcast("playerBanned", result3.GetString("banreason"), result3.GetString("bywho"), player.ConnectUserId);*/
                                        }//66.168.105.195
                                        if (player.IPAddress.ToString() == "160.176.139.140" || player.IPAddress.ToString() == "41.250.175.139")
                                        {
                                            Broadcast("alert", player.ConnectUserId, "This Account is Suspended!");
                                            result3.Set("banned", true);
                                            result3.Set("banreason", "Sorry, you are cancer so you deserved it...");
                                            result3.Set("bywho", "The System!");
                                            result3.Save();
                                            player.Disconnect();
                                        }
                                        else
                                        {
                                            var dbbadge = result.GetString("badge", "");
                                            var dbusername = result3.GetString("username", "");
                                            Broadcast("UserJoined", dbskin, dbbadge, dbusername, player.ConnectUserId, PlayerCount);
                                        }

                                    }
                            });
                            });
                    });
                });
            }

        // This method is called when a player leaves the game
        public override void UserLeft(Player player)
        {
            Broadcast("UserLeft", player.Id);
            var fbname = player.JoinData["fbname"];
            var fbuid = player.ConnectUserId;
            PlayerIO.BigDB.LoadOrCreate("PlayerObjects", fbuid, delegate(DatabaseObject result)
            {
                result.Set("Online", false);
                result.Save();
                Broadcast("UserLeft", player.ConnectUserId.Split('b')[1]);
            });
        }

        // This method is called when a player sends a message into the server code
        public override void GotMessage(Player player, Message message)
        {
            switch (message.Type)
            {
                // This is how you would set a players name when they send in their name in a 
                // "MyNameIs" message
                case "MyNameIs":
                    player.Name = message.GetString(0);
                    break;
                case "HandlePlayer":
                    Broadcast("Menu", message.GetString(0));
                    break;
                case "idkrly":
                    var fbuid = player.ConnectUserId;
                    var fbname = player.JoinData["fbname"];
                    PlayerIO.BigDB.LoadOrCreate("PlayerObjects", fbuid, delegate(DatabaseObject result)
                    {
                        PlayerIO.BigDB.LoadOrCreate("secureDB", player.ConnectUserId, delegate(DatabaseObject data)
            {
                if (message.GetString(0) == "red")
                {
                    result.Set("skins", "red");
                    result.Save();
                }
                if (message.GetString(0) == "blue")
                {
                    result.Set("skins", "blue");
                    result.Save();
                }
                if (message.GetString(0) == "yellow")
                {
                    result.Set("skins", "yellow");
                    result.Save();
                }
                if (message.GetString(0) == "green")
                {
                    result.Set("skins", "green");
                    result.Save();
                }
                if (message.GetString(0) == "runda")
                {
                    result.Set("rounds", result.GetInt("rounds") + 1);
                    result.Save();
                }
                if (message.GetString(0) == "second")
                {
                    result.Set("SecondChance", result.GetInt("SecondChance") - 1);
                    result.Save();
                }
                if (message.GetString(0) == "secondchance")
                {
                    result.Set("SecondChance", 1);
                    result.Save();
                }
                if (message.GetString(0) == "maovo")
                {
                    result.Set("Die", result.GetInt("Die") + 1);
                    result.Save();
                }
                if (message.GetString(0) == "curxp")
                {
                    int updatecurxp = int.Parse(message.GetString(1));
                    {
                        result.Set("CurrentXP", result.GetInt("CurrentXP") + updatecurxp);
                        result.Save();
                    }
                }
                if (message.GetString(0) == "totxp")
                {
                    int updatetotxp = int.Parse(message.GetString(1));
                    {
                        result.Set("TotalXP", result.GetInt("TotalXP") + updatetotxp);
                        result.Save();
                    }
                }
                if (message.GetString(0) == "achii")
                {
                    DatabaseArray arr = result.GetArray("achievement");
                    arr.Add(message.GetString(1));
                    result.Save();
                }
                if (message.GetString(0) == "levelup")
                {
                    if (result.GetInt("CurrentXP") > result.GetInt("XPToNextLevel"))
                    {
                        result.Set("CurrentLevel", result.GetInt("CurrentLevel") + 1);
                        result.Set("XPToNextLevel", result.GetInt("XPToNextLevel") + 40);
                        result.Save();
                    }
                }
                if (message.GetString(0) == "newhsc")
                { 
                    int updatehsc = int.Parse(message.GetString(1));
                    if (result.GetInt("highscore") < updatehsc)
                    {
                    result.Set("highscore", updatehsc);
                    result.Save();
                    }
                }
                    });
                    });
                    break;
                case "unpack-boxer":
                    PayVault chest1 = player.PayVault;
                    chest1.Refresh(delegate()
                    {
                        if (chest1.Has("BoxerSet"))
                        {
                            VaultItem chest1item = chest1.First("BoxerSet");
                            chest1.Consume(new VaultItem[] { chest1item }, delegate()
                            {
                            });
                            player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Helmet") }, () => Console.WriteLine("dshoes" + " Given"));
                            player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("gloves") }, () => Console.WriteLine("dshoes" + " Given"));
                        }
                    });
                    break;
                case "saveinv":
                    var fbuid1 = player.ConnectUserId;
                    PlayerIO.BigDB.LoadOrCreate("PlayerObjects", fbuid1, delegate(DatabaseObject result)
                    {
                        result.Set("skins", message.GetString(0));
                        result.Set("headItem", message.GetString(1));
                        result.Set("mouthItem", message.GetString(2));
                        result.Set("handItem", message.GetString(3));
                        result.Set("bg", message.GetString(4));
                        result.Set("shoesItem", message.GetString(5));
                        result.Save();
                    });
                    break;
                case "unknown":
                   switch(message.GetString(0))
                   {
                    case "SinglePlayer":
                        uint updateCoins1 = uint.Parse(message.GetString(1));
                        if (updateCoins1 > 150)
                        {
                                player.Send("alert", "Nice try :) To Try to Hack coins");
                        }
                        else
                        {
                            PayVault pvault = player.PayVault;
                            pvault.Refresh(delegate () { });
                            uint updateCoins = uint.Parse(message.GetString(1));
                            pvault.Credit(updateCoins, "SinglePlayer", delegate ()
                            {
                               int newcoins = pvault.Coins;
                               player.Send("done", "coins");
                            });
                        }
                    break;
                    case "AchCoins":
                    uint updateCoins2 = uint.Parse(message.GetString(1));
                        if (updateCoins2 > 201)
                        {
                                player.Send("alert", "Nice try :) To Try to Hack coins");
                        }
                        else
                        {
                            PayVault pvault = player.PayVault;
                            pvault.Refresh(delegate () { });
                            uint updateCoins = uint.Parse(message.GetString(1));
                            pvault.Credit(updateCoins, "AchCoins", delegate()
                            {
                               int newcoins = pvault.Coins;
                               player.Send("done", "coins");
                            });
                        }
                            break;
                    }
                  

                    break;
                case "unpack-meme":
                    PayVault chest2 = player.PayVault;
                    chest2.Refresh(delegate()
                                    {
                                        if (chest2.Has("memepack"))
                                        {
                                            VaultItem chest2item = chest2.First("memepack");
                                            chest2.Consume(new VaultItem[] { chest2item }, delegate()
                                            {
                                            });
                                            player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("really") }, () => Console.WriteLine("dshoes" + " Given"));
                                            player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("foreveralone") }, () => Console.WriteLine("dshoes" + " Given"));
                                            player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("trollface") }, () => Console.WriteLine("dshoes" + " Given"));
                                        }
                                    });
                    break;
            }

        }

    }
    [RoomType("GoRoom")]
    public class GameCode1 : Game<Player>
    {
        public String users = "";
        public String skins = "";
        public String badge = "";
        public String offers = "";
        public String fbid = "";
        public String myusername = "";
        public String mybadge = "";
        public String myskin = "";
        // This method is called when an instance of your the game is created
        public override void GameStarted()
        {
            // anything you write to the Console will show up in the 
            // output window of the development server
            Console.WriteLine("Game is started: " + RoomId);

            // This is how you setup a timer
            AddTimer(delegate
            {
                // code here will code every 100th millisecond (ten times a second)
            }, 100);

            // Debug Example:
            // Sometimes, it can be very usefull to have a graphical representation
            // of the state of your game.
            // An easy way to accomplish this is to setup a timer to update the
            // debug view every 250th second (4 times a second).
            AddTimer(delegate
            {
                // This will cause the GenerateDebugImage() method to be called
                // so you can draw a grapical version of the game state.
                RefreshDebugView();
            }, 250);
        }

        // This method is called when the last player leaves the room, and it's closed down.
        public override void GameClosed()
        {
            Console.WriteLine("RoomId: " + RoomId);
        
        }

        // This method is called whenever a player joins the game
        public override void UserJoined(Player player)
        {
            PlayerIO.BigDB.LoadOrCreate("secureDB", player.ConnectUserId, delegate(DatabaseObject data)
            {
                if (data.GetBool("banned") == true)
                {
                    player.Disconnect();
                    return;
                }
                player.Send("hello");
                PayVault pvault = player.PayVault;
                player.Name = data.GetString("fbname");
                player.fbuid = data.GetString("fbuid");
                // AddTimer(delegate
                //  {
                //    Random random = new Random();
                //    int ran1 = random.Next(1, 19);
                //   whatitem(ran1.ToString(), player.ConnectUserId, player);
                //   }, 500000);
                pvault.Refresh(delegate()
                {
                    updatefbid();
                    updateRoomData();
                    updateRoomOffers(player);
                    updateSkins();
                    updateBadge();
                    Broadcast("UserJoined", player.ConnectUserId, PlayerCount, users, skins, badge, fbid);
                });
            });
        }

        private void updatefbid()
        {
            fbid = "";
            foreach (Player player in Players)
            {
                fbid += player.JoinData["fbuid"] + "~";
            }
            RoomData["Fbuid"] = fbid;
            RoomData.Save();
        }

        private void updateBadge()
        {
            badge = "";
            foreach (Player player in Players)
            {
                badge += player.JoinData["dbbadge"] + "~";
            }
            RoomData["Badge"] = badge;
            RoomData.Save();
        }

        private void updateSkins()
        {
            skins = "";
            foreach (Player player in Players)
            {
                skins += player.JoinData["dbskin"] + "~";
            }
            RoomData["Skins"] = skins;
            RoomData.Save();
        }

        private void joinrequest(string hisID, Player player)
        {

            foreach (Player p in Players)
            {
                if (hisID == p.ConnectUserId)
                {

                    if (p.myTrader != "0" && p.Busy != "0")
                    {
                        player.Send("tooslow");
                    }
                    else
                    {
                        p.Busy = player.Name;
                        p.myTrader = player.ConnectUserId;
                        player.myTrader = p.ConnectUserId;
                        p.Send("gotpartner", player.Name);
                        updateRoomOffers(player);
                    }

                }

            }

        
}
        private void partnerreject(Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("rejected");
                    p.myTrader = "0";



                }
            }
            player.Busy = "0";
            player.myTrader = "0";
            updateRoomOffers(player);

        }

        private void trade_accept(string items, string itemk, Player player)
        {

            //Console.WriteLine("trader = " + player.myTrader);

            string[] bitems = items.Split(',');
            // List<string> bitems = new List<string>(items.Split(','));

            int howmany = 1;
            foreach (string item in bitems)
            {
                if (item != "")
                {
                    Console.WriteLine("howmany = " + howmany);
                    howmany = howmany + 1;
                }
                Console.WriteLine("howmany = " + howmany);
            }

            //public string sitem = "nothing";
            // VAULT1 = tip ki da stvari
            //VAULTS = tip ki prodaja stvar
            // public List<string> bitems = new List<string>();

            //public void Trade(Player tseller, Player tbuyer, string item, List<string> items, GameCode room)

            foreach (Player p in Players)
            {
                if (!users.Contains(player.myTrader))
                {
                    player.Send("alert", "Trade error!");

                }
                if (player.myTrader == p.ConnectUserId)
                {

                    Console.WriteLine("trader = " + player.myTrader + p.myTrader);




                    Console.WriteLine("partner found");
                    PayVault vaults = player.PayVault;
                    PayVault vault1 = p.PayVault;

                    vaults.Refresh(null);
                    vault1.Refresh(null);

                    if (vaults.Has(itemk))
                    {
                        foreach (string itemm in bitems)
                        {
                            Console.WriteLine("he got it");
                            if (itemm != "")
                            {
                                if (!vault1.Has(itemm)) { p.Send("alert", "Trade error!"); player.Send("alert", "Trade error!"); return; }
                            }
                        }
                        vaults.Consume(new VaultItem[] { vaults.First(itemk) }, delegate() { Console.WriteLine("he lost 1" + itemk); vault1.Give(new BuyItemInfo[] { new BuyItemInfo(itemk) }, delegate() { Console.WriteLine("he got " + itemk); }); });

                        int done = 1;

                        foreach (string ti in bitems)
                        {
                            if (ti != "")
                            {
                                string mi = ti;
                                Console.WriteLine("im at d end" + ti);


                                vault1.Consume(new VaultItem[] { vault1.First(ti) }, delegate()
                                {

                                    Console.WriteLine("he lost " + ti); Console.WriteLine("done = " + done); vaults.Give(new BuyItemInfo[] { new BuyItemInfo(mi) }, delegate()
                                    {
                                        done = done + 1;
                                        Console.WriteLine("he got " + mi);
                                        Console.WriteLine("howmany = " + howmany);
                                        Console.WriteLine("done = " + done);

                                        if (done == howmany)
                                        {
                                            tradeDone(player);

                                        }


                                    });


                                });



                            }


                        }
                        if (done == howmany)
                        {
                            tradeDone(player);

                        }

                    }
                    else
                    {
                        p.Send("alert", "Trade error!"); player.Send("alert", "Trade error!");
                    }
                }
            }

        }


        private void tradeDone(Player player)
        {
            foreach (Player p in Players)
            {

                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("trade_done");
                    player.Send("trade_done");
                    p.Send("done");
                    player.Send("done");
                    player.OfferItem = "nooffer";
                    player.Busy = "0";
                    player.myTrader = "0";
                    p.OfferItem = "nooffer";
                    p.Busy = "0";
                    p.myTrader = "0";
                    Console.WriteLine("trader = " + player.myTrader + p.myTrader);
                    updateRoomOffers(player);
                    PayVault pvault = player.PayVault;
                    pvault.Refresh(delegate() { });
                    PayVault pvault1 = p.PayVault;
                    pvault1.Refresh(delegate() { });
                }
            }
        }





        private void trade_lock(Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("trade_locked", p.myTrader);
                }

            }




        }


        private void leave_offer(Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("partner_left");
                    p.myTrader = "0";
                    p.Busy = "0";
                    updateRoomOffers(p);



                }

            }

            player.myTrader = "0";


        }
        private void itemupdate(int itemnum, string item, Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("changeitem", itemnum, item);
                }

            }
        }
        private void updateRoomOffers(Player player)
        {
            {
                offers = "";
                foreach (Player p in Players)
                {
                    if (p.OfferItem != "nooffer")
                    {
                        offers += p.Name + ":" + p.ConnectUserId + ":" + p.OfferItem + ":" + p.Busy + ":" + p.myTrader + "~";
                    }
                }
                RoomData["Offers"] = offers;
                RoomData.Save();
                Broadcast("UpdateOffers", player.ConnectUserId, this.PlayerCount, offers);

            }
        }

        private void updateRoomData()
        {
            users = "";
            foreach (Player player in Players)
            {
                users += player.JoinData["dbusername"] + "~";
            }
            RoomData["Users"] = users;
            RoomData.Save();
        }

        // This method is called when a player leaves the game
        public override void UserLeft(Player player)
        {
            PlayerIO.BigDB.LoadOrCreate("secureDB", player.ConnectUserId, delegate(DatabaseObject data)
            {
                updateRoomData();
                updateSkins();
                updateBadge();
                updateRoomOffers(player);
                if (player.myTrader != "0")
                {
                    if (player.OfferItem != "nooffer")
                    {
                        partnerreject(player);

                    }
                    else
                    {
                        leave_offer(player);
                    }

                }
                Broadcast("UserLeft", player.ConnectUserId, PlayerCount, users, skins, badge, fbid);
            });
        }

        // This method is called when a player sends a message into the server code
        public override void GotMessage(Player player, Message message)
        {
            PayVault pvault = player.PayVault;
            var fbname = player.JoinData["fbname"];
            switch (message.Type)
            {
                case "MyNameIs":
                    player.Name = message.GetString(0);
                    break;
                case "chatMsg":
                    PlayerIO.BigDB.LoadOrCreate("PlayerObjects", player.ConnectUserId, delegate(DatabaseObject result)
                  {
                      PlayerIO.BigDB.LoadOrCreate("secureDB", player.ConnectUserId, delegate(DatabaseObject pdb0)
                      {
                          if (pdb0.GetBool("banned") == true)
                          {
                              player.Disconnect();
                              return;
                          }
                          string me = message.GetString(0);
                          String[] mycom = me.Split(';');
                          //string[] cmd = message.GetString(1).Split(';');
                          if (mycom[0] == ("/cmds") || mycom[0] == ("/cmd") || mycom[0] == ("/commands"))
                          {
                              if (pvault.Has("team"))
                              {
                                  player.Send("chatMsg", "<HTML><FONT COLOR=" + '"' + "#FFFFFF" + '"' + "> " +
                                      "-------------------------Commands for Admins-------------------------------         " +
                                      "1. /aalert;[your alert msg this sends to all that online]                           " +
                                      "2. /getitems[Add All items to you]                                                  " +
                                      "3. /alert;[fbuid with fb without will not work];[your alert msg]                    " +
                                      "4. /giveitem;[fbuid with fb without will not work];[itemname];[itemamount]          " +
                                      "5. /kick;[id] Kick player from sector :3                                            " +
                                      "6. /ban;[FBID];[URNAME];[REASON]                                                    " +
                                      "7. /rewipe;[FBID] DESTROY PLAYER ITEMS :3                                           " +
                                      "8. /unban;[FBID] Unban                                                              " +
                                      "9. /mute;[FBID];[URNAME]                                                            " +
                                      "10. /unmute;[FBID]                                                                  " +
                                      "11. /offban;[FBID];[UR FACEBOOK NAME];[REASON]                                      " +
                                      "12. /clear                                                                          " +
                                      "13. /forcereload                                                                    " +
                                      "14. /pinfo;ID ILI IME       useless command                                         " +
                                      "15. /allpinfo                                                                       " +
                                      "15. /playmusic;Urlmp3                                                               " +
                                      "15. /stopmusic                                                                      " +
                                      "16. /addmgc;[reedemcode you need type it self and max is 6 chars];[itemname]        " +
                                      "</ font></HTML>", "");
                              }
                              return;
                          }
                          if (mycom[0] == ("/aalert"))
                          {
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      if (player.Id == p.Id)
                                      {
                                          Broadcast("alert", player.ConnectUserId, mycom[1]);
                                      }
                                      else
                                      {
                                          Broadcast("alert", p.ConnectUserId, mycom[1]);
                                      }
                                  }
                              }
                              return;
                          }
                          if (mycom[0] == "/help")
                          {
                              player.Send("chatMsg", "<HTML><FONT COLOR=" + '"' + "#FFFFFF" + '"' + "> " +
                                      "-------------------------Commands for Normal Players-------------------------------         " +
                                      "1. /pm;fbuid;text, You can do it more easly by clicking on Player Skin                         " +
                                      "1. /stopit, Stop music if you dont want listen it!                                             " +
                                      "</ font></HTML>", "");
                              return;
                          }
                          if (mycom[0] == "/allpinfo")
                          {
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      string pinfo = "<a href=\'" + "event:" + p.fbuid + "\'><font color=\'#FFFFFF\'>" + "&gt;&gt;" + p.Id + "- " + "</font><font color=\'#FF6600\'>UserId=</font>" + "<font color=\'#FFFFFF\'>" + p.ConnectUserId.Replace("fb", "") + "</font>" + "-</font><font color=\'#FF6600\'>Name=</font>" + "<font color=\'#FFFFFF\'>" + p.Name + "</font></font></a>";
                                      player.Send("chatMsg", pinfo);
                                  }
                              }
                              return;
                          }
                          if (mycom[0] == ("/pm"))
                          {
                                  foreach (Player p in Players)
                                  {
                                      if (p.ConnectUserId == mycom[1])
                                      {
                                          player.Send("chatMsg", "<font color=\'#FFFF00\'>  You sent Private message to " + p.Name + ": " + mycom[2] +  "</font>");
                                          p.Send("chatMsg", "<font color=\'#FFFF00\'> You recieved Private message from " + player.Name + ": " + mycom[2] + "</font>");
                                      }
                              }
                              return;
                          }
                          if (mycom[0] == "/pinfo")
                          {
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      if (p.ConnectUserId == mycom[1] || p.Name == mycom[1])
                                      {
                                          string pinfo = "<a href=\'" + "event:" + p.fbuid + "\'><font color=\'#FFFFFF\'>" + "&gt;&gt;" + p.Id + "- " + "</font><font color=\'#FF6600\'>UserId=</font>" + "<font color=\'#FFFFFF\'>" + p.ConnectUserId.Replace("fb", "") + "</font>" + "-</font><font color=\'#FF6600\'>Name=</font>" + "<font color=\'#FFFFFF\'>" + p.Name + "</font></font></a>";
                                          player.Send("chatMsg", pinfo);
                                      }
                                  }
                              }
                              return;
                          }
                          if (mycom[0] == "/forcereload")
                          {
                              if (result.GetString("badge").Equals("moderator"))
                              {
                                  return;
                              }
                              if (pvault.Has("team"))
                              {
                                  Broadcast("forcereload", player.ConnectUserId);
                              }
                              return;
                          }
                          if (mycom[0] == "/mute")
                          {
                              if (pvault.Has("team"))
                              {
                                  PlayerIO.BigDB.LoadOrCreate("secureDB", mycom[1], delegate(DatabaseObject playerdb)
                                  {
                                      playerdb.Set("muted", true);
                                      playerdb.Set("mutedby", mycom[2]);
                                      playerdb.Save();
                                  });
                              }
                              return;
                          }
                          if (mycom[0] == "/unmute")
                          {
                              if (pvault.Has("team"))
                              {
                                  PlayerIO.BigDB.LoadOrCreate("secureDB", mycom[1], delegate(DatabaseObject playerdb)
                                  {
                                      playerdb.Set("muted", false);
                                      playerdb.Set("mutedby", "");
                                      playerdb.Save();
                                  });
                              }
                              return;
                          }
                          if (mycom[0] == "/clear")
                          {
                              if (pvault.Has("team"))
                              {
                                  Broadcast("clear");
                              }
                              return;
                          }
                          if (mycom[0] == "/offban")
                          {
                              if (pvault.Has("team"))
                              {
                                  PlayerIO.BigDB.LoadOrCreate("secureDB", mycom[1], delegate(DatabaseObject playerdb)
                                  {
                                      playerdb.Set("banned", true);
                                      playerdb.Set("banreason", mycom[3]);
                                      playerdb.Set("bywho", mycom[2]);
                                      playerdb.Save();
                                  });
                              }
                              return;
                          }
                          if (mycom[0] == "/unban")
                          {
                              if (pvault.Has("team"))
                              {
                                  PlayerIO.BigDB.LoadOrCreate("secureDB", mycom[1], delegate(DatabaseObject playerdb)
                                  {
                                      playerdb.Set("banned", false);
                                      playerdb.Set("banreason", "");
                                      playerdb.Set("bywho", "");
                                      playerdb.Save();
                                  });
                              }
                              return;
                          }
                          if (mycom[0] == ("/kick"))
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      if (p.ConnectUserId == mycom[1])
                                      {
                                          p.Send("alert", mycom[1], "Disconnected!");
                                          Broadcast("UserLeft", p.ConnectUserId.Replace("fb", ""));
                                          p.Disconnect();
                                          Broadcast("chatMsg", "<font color=\'#FFFF00\'>&gt;&gt;" + p.Name + " Got Kicked!&lt;&lt;</font>");
                                      }
                                  }
                                  return;
                              }
                          if (mycom[0] == "/playmusic")
                          {
                              if (pvault.Has("team"))
                              {
                              Broadcast("playmusic", mycom[1]);
                              Broadcast("chatMsg", "<font color='#00FF00'>" + ">> " + player.Name + " played a music ( /stopit to shut down music )");
                              }
                              return;
                          }
                          if (mycom[0] == "/stopit")
                          {
                              foreach (Player p in Players)
                                  {
                                    player.Send("stopmusic");
                                  }
                              return;
                          }
                          if (mycom[0] == "/stopmusic")
                          {
                              if (pvault.Has("team"))
                              {
                              Broadcast("stopmusic");
                              Broadcast("chatMsg", "<font color='#FF0000'>" + ">> " + player.Name + " stopped the music");
                              }
                              return;
                          }
                          if (mycom[0] == ("/rewipe"))
                          {
                              if (pvault.Has("team"))
                              {
                                  if (result.GetString("badge").Equals("moderator"))
                                  {
                                      return;
                                  }
                                  foreach (Player p in Players)
                                  {
                                      if (p.ConnectUserId == mycom[1])
                                      {
                                          PayVault hisvault = PlayerIO.GetUserPayVault(mycom[1]);
                                          hisvault.Refresh(delegate()
                                      {
                                          p.PayVault.Consume(p.PayVault.Items, delegate() { });
                                      });
                                          Broadcast("chatMsg", "<font color=\'#FFFF00\'>&gt;&gt;" + p.Name + " Items Got Rewiped!&lt;&lt;</font>");
                                      }
                                  }
                              }
                              return;
                          }
                          if (mycom[0] == ("/alert"))
                          {
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      if (player.Id == p.Id)
                                      {
                                          //ohne mit mich zu senden(without with me to send)
                                      }
                                      else
                                      {
                                          p.Send("alert", mycom[1], "ADMIN/MOD ALERT: " + mycom[2]);
                                      }
                                  }
                              }
                              return;
                          }
                          if (mycom[0] == ("/ban"))
                          {
                              if (pvault.Has("team"))
                              {
                                  foreach (Player p in Players)
                                  {
                                      if (p.ConnectUserId == mycom[1])
                                      {
                                          var bywho = mycom[2];
                                          var banreason = mycom[3];
                                          p.Disconnect();
                                          PlayerIO.BigDB.LoadOrCreate("secureDB", p.ConnectUserId, delegate(DatabaseObject db)
                                          {

                                              db.Set("banned", true);
                                              db.Set("bywho", mycom[2]);
                                              db.Set("banreason", mycom[3]);
                                              db.Save();
                                          });
                                      }
                                  }
                              }
                              return;

                          }
                          if (mycom[0] == ("/giveitem"))
                          {
                              if (result.GetString("badge").Equals("moderator"))
                              {
                                  return;
                                  }
                                  if (pvault.Has("team"))
                                  {
                                      foreach (Player giver in Players)
                                      {
                                          if (giver.ConnectUserId == mycom[1])
                                          {
                                              var giveitem = mycom[2];
                                              var amount = mycom[3];
                                              PayVault hisvault = PlayerIO.GetUserPayVault(mycom[1]);
                                              hisvault.Refresh(delegate()
                                              {
                                                  int numVal = Int32.Parse(mycom[3]);

                                                  for (int i = 0; i < numVal; i++)
                                                  {
                                                      hisvault.Give(new BuyItemInfo[] { new BuyItemInfo(mycom[2]), }, delegate() { });
                                                  }
                                                  //giver.Send("giveaway", giveitem, mycom[1].Split('b')[1], amount);
                                              });
                                              Broadcast("UserLeft", giver.ConnectUserId.Replace("fb", ""));
                                              giver.Send("alert", mycom[1], "An admin has gifted you items, rejoin sector please!");
                                              giver.Disconnect();
                                          }
                                          else
                                          {

                                          }
                                      }
                                  }
                                  return;
                              }
                              if (mycom[0] == "/addmgc")
                              {
                                  if (result.GetString("badge").Equals("moderator"))
                                  {
                                      return;
                                  }
                                  if (pvault.Has("team"))
                                  {
                                      PlayerIO.BigDB.LoadOrCreate("ssredeemCodes", mycom[1], delegate(DatabaseObject makereedems)
                                      {
                                          makereedems.Set("item", mycom[2]);
                                          makereedems.Set("usedby", "");
                                          makereedems.Save();
                                          player.Send("alert", player.ConnectUserId, "YOUR GIFTCODE: " + mycom[1]);
                                      });
                                  }
                                  else
                                  {
                                      Broadcast("alert", player.ConnectUserId, "Your Not Team!");
                                  }
                                  return;
                              }
                              if (mycom[0] == "/getitems")
                              {
                                  if (result.GetString("badge").Equals("moderator"))
                                  {
                                      return;
                                  }
                                  if (pvault.Has("team"))
                                  {
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("cowboy") }, () => Console.WriteLine("cowboy" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("indian") }, () => Console.WriteLine("indian" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("gloves") }, () => Console.WriteLine("gloves" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("ballon") }, () => Console.WriteLine("ballon" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("crashland") }, () => Console.WriteLine("crashland" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("pussyskin") }, () => Console.WriteLine("pussyskin" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("hallowen") }, () => Console.WriteLine("hallowen" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("unstoppable") }, () => Console.WriteLine("unstoppable" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("xmas") }, () => Console.WriteLine("xmas" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("donator") }, () => Console.WriteLine("donator" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("dealer") }, () => Console.WriteLine("dealer" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("matrix") }, () => Console.WriteLine("matrix" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("memeskin") }, () => Console.WriteLine("memeskin" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("boxerskin") }, () => Console.WriteLine("boxerskin" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("anonskin") }, () => Console.WriteLine("anonskin" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("bandana") }, () => Console.WriteLine("bandana" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("gas") }, () => Console.WriteLine("gas" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("blabla") }, () => Console.WriteLine("blabla" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("blueballoon") }, () => Console.WriteLine("blueballoon" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("armour") }, () => Console.WriteLine("armour" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("starshoes") }, () => Console.WriteLine("starshoes" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("goldenshoes") }, () => Console.WriteLine("goldenshoes" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("boxhead") }, () => Console.WriteLine("boxhead" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("fireman") }, () => Console.WriteLine("fireman" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("pilot") }, () => Console.WriteLine("pilot" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Anon") }, () => Console.WriteLine("Anon" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Pan") }, () => Console.WriteLine("Pan" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("bucket") }, () => Console.WriteLine("bucket" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("skull") }, () => Console.WriteLine("skull" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Cone") }, () => Console.WriteLine("Cone" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Chopper") }, () => Console.WriteLine("Chopper" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("hockey") }, () => Console.WriteLine("hockey" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("pumpkin") }, () => Console.WriteLine("pumpkin" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("pokerface") }, () => Console.WriteLine("pokerface" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("army") }, () => Console.WriteLine("army" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Cereal") }, () => Console.WriteLine("Cereal" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("viking") }, () => Console.WriteLine("viking" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("sombrero") }, () => Console.WriteLine("sombrero" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("swat") }, () => Console.WriteLine("swat" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("builder") }, () => Console.WriteLine("builder" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("TradingTicket") }, () => Console.WriteLine("TradingTicket" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("aviator") }, () => Console.WriteLine("aviator" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Chinese") }, () => Console.WriteLine("Chinese" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("really") }, () => Console.WriteLine("really" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("foreveralone") }, () => Console.WriteLine("foreveralone" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("trollface") }, () => Console.WriteLine("trollface" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("memepack") }, () => Console.WriteLine("memepack" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("party") }, () => Console.WriteLine("party" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Blonde") }, () => Console.WriteLine("Blonde" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("SecondChance") }, () => Console.WriteLine("SecondChance" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Anbu") }, () => Console.WriteLine("Anbu" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Umbrella") }, () => Console.WriteLine("Umbrella" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Sunset") }, () => Console.WriteLine("Sunset" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("BoxerSet") }, () => Console.WriteLine("BoxerSet" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("Helmet") }, () => Console.WriteLine("Helmet" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("AmericanHelmet") }, () => Console.WriteLine("AmericanHelmet" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("bombwave") }, () => Console.WriteLine("bombwave" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("adrenaline") }, () => Console.WriteLine("adrenaline" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("magnet") }, () => Console.WriteLine("magnet" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("supermagnet") }, () => Console.WriteLine("supermagnet" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("wingsuit") }, () => Console.WriteLine("wingsuit" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("superwingsuit") }, () => Console.WriteLine("superwingsuit" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("slowmotion") }, () => Console.WriteLine("slowmotion" + " Given"));
                                      player.PayVault.Give(new BuyItemInfo[] { new BuyItemInfo("fan") }, () => Console.WriteLine("fan" + " Given"));
                                      player.Disconnect();
                                  }
                                  else
                                  {
                                      Broadcast("alert", player.ConnectUserId, "Your Not Team!");
                                  }
                              }
                              else if (pdb0.GetBool("muted") == false && player.canChat == true)
                              {
                                  PlayerIO.BigDB.LoadOrCreate("secureDB", player.ConnectUserId, delegate(DatabaseObject data)
                                  {
                                      if (pvault.Has("team"))
                                      {
                                          Broadcast("chatMsg", "<font color='#00FFFF'>" + data.GetString("fbname") + ": " + mycom[0]);
                                          player.canChat = false;
                                          ScheduleCallback(delegate()
                                          {
                                              player.canChat = true;
                                          }, 1000);
                                      }
                                      else if (pvault.Has("vip"))
                                      {
                                          Broadcast("chatMsg", "<font color='#FFFF00'>" + data.GetString("fbname") + ": " + mycom[0]);
                                          player.canChat = false;
                                          ScheduleCallback(delegate()
                                          {
                                              player.canChat = true;
                                          }, 2200);
                                      }
                                      else if (!pvault.Has("team") || !pvault.Has("vip"))
                                      {
                                          Broadcast("chatMsg", "<font color='#FFFFFF'>" + data.GetString("fbname") + ": " + mycom[0]);
                                          player.canChat = false;
                                          ScheduleCallback(delegate()
                                          {
                                              player.canChat = true;
                                          }, 3000);
                                      }
                                  });
                              }
                              else
                              {
                                  Broadcast("alert", player.ConnectUserId, "Stop Spamming!");
                                  if (pdb0.GetBool("muted") == true)
                                  {
                                      Broadcast("uwereMuted", pdb0.GetString("mutedby") + " Muted You", player.ConnectUserId);
                                  }
                              }
                      });


                    });
                    break;
                case "openacc":
                    PlayerIO.BigDB.LoadOrCreate("PlayerObjects", "fb" + message.GetString(0), delegate(DatabaseObject pdb)
                    {
                        PlayerIO.BigDB.LoadOrCreate("secureDB", "fb" + message.GetString(0), delegate(DatabaseObject maindb)
                        {
                            var hisname = maindb.GetString("fbname");
                            var hisfbid = maindb.GetString("fbuid");
                            Broadcast("hisinfo", player.ConnectUserId, hisname, hisfbid, pdb.GetString("headItem"), pdb.GetString("eyeItem"), pdb.GetString("handItem"), maindb.GetInt("coins").ToString());
                        });
                    });
                    break;
                case "iunlock":
                    foreach (Player p in Players)
                                  {
                    {
                        p.Send("heunlock", message.GetString(0));
                    }
                                  }
                    break;
                case "trade_item_update":
                    itemupdate(message.GetInt(0), message.GetString(1), player);
                    break;
                case "trade_accept":
                    foreach (Player p in Players)
                    {
                        if (player.myTrader == p.ConnectUserId)
                        {
                            p.Send("waiting_deal");
                        }
                    }
                    trade_accept(message.GetString(0), message.GetString(1), player);
                    break;
                case "trade_lock":
                    trade_lock(player);
                    break;
                case "leave_offer":
                    leave_offer(player);
                    break;
                case "rejectpartner":
                    partnerreject(player);
                    break;
                case "getin":
                    joinrequest(message.GetString(0), player);
                    break;
                case "ChangeOffer":
                    player.OfferItem = message.GetString(0);
                    updateRoomOffers(player);
                    break;   
            }
        }
        Point debugPoint;

        // This method get's called whenever you trigger it by calling the RefreshDebugView() method.
        public override System.Drawing.Image GenerateDebugImage()
        {
            // we'll just draw 400 by 400 pixels image with the current time, but you can
            // use this to visualize just about anything.
            var image = new Bitmap(400, 400);
            using (var g = Graphics.FromImage(image))
            {
                // fill the background
                g.FillRectangle(Brushes.Blue, 0, 0, image.Width, image.Height);

                // draw the current time
                g.DrawString(DateTime.Now.ToString(), new Font("Verdana", 20F), Brushes.Orange, 10, 10);

                // draw a dot based on the DebugPoint variable
                g.FillRectangle(Brushes.Red, debugPoint.X, debugPoint.Y, 5, 5);
            }
            return image;
        }

        // During development, it's very usefull to be able to cause certain events
        // to occur in your serverside code. If you create a public method with no
        // arguments and add a [DebugAction] attribute like we've down below, a button
        // will be added to the development server. 
        // Whenever you click the button, your code will run.
        [DebugAction("Play", DebugAction.Icon.Play)]
        public void PlayNow()
        {
            Console.WriteLine("The play button was clicked!");
        }

        // If you use the [DebugAction] attribute on a method with
        // two int arguments, the action will be triggered via the
        // debug view when you click the debug view on a running game.
        [DebugAction("Set Debug Point", DebugAction.Icon.Green)]
        public void SetDebugPoint(int x, int y)
        {
            debugPoint = new Point(x, y);
        }
    }
}