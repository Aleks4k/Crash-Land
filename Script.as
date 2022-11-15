//mp i top 3 active
package  
{
	import flash.display.MovieClip
	import flash.display.StageDisplayState;
	import caurina.transitions.*;
	import playerio.*
	import flash.display.Loader;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.net.*;
    import flash.text.*;
	import flash.system.Security;
	import flash.system.SecurityDomain;
	import flash.security.*;
	import flash.display.Stage;
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.net.*;
	import flash.utils.*;
	import flash.system.*;
	import flash.filters.*;
	import flash.text.*;
	import flash.media.*;
	import flash.text.TextField;
	
	import flash.utils.Timer;
    import flash.events.TimerEvent;
	import flash.ui.Keyboard;
	import fl.transitions.Tween;
    import fl.transitions.easing.*;
    import flash.accessibility.Accessibility;
	import flash.external.ExternalInterface;
	import flash.system.Security;
	import com.freeactionscript.Scrollbar;
	import flash.system.Security;
	import fl.controls.Button;
	import flash.errors.MemoryError;
	import flash.net.URLLoader;
	import com.greensock.easing.Back;
	import flash.external.*;
	
	public class Script extends MovieClip 
	{
		public var canopen = true;
		public var enemyName;
		public var offer_btn:SimpleButton;
		public var enemycharz;
		public var div;
		public var typetomake;
		public var tradeBlacklist = ["vip", "team"];
		public var myPlayer:uint;
		public var ficl:MovieClip;
        public var enemyPlayer:uint;
		public var overlay:MovieClip;
		public var gamestartedis;
		public var snowing = true;
		public var ctr_w = new trade_w();
		public var itemoffer;
		private var mySound1:Sound;
		private var myChannel1:SoundChannel;
		public var offercount = 0;
		public var q_btn:MovieClip;
		//public var myChar:charnow;
		public var cq:Number;
		public var qualities:Array;
		public var usedBefore:Boolean = false;
		public var sound_muted:Boolean;
		var gameRestarted:Boolean;
		public var inv:items_mc;
		public var i:int = 0;
		public var _scrollbar:Scrollbar;
		public var snow_btn:MovieClip;
		public var p1name;
		public var mute_btn:MovieClip;
		public var rounds_txt:TextField;
		public var giftcodes_mc:giftcodes;
		public var TotalXPText:TextField;
		public var top10:MovieClip;
		public var sc_w:MovieClip;
		public var offers_w:MovieClip;
		public var tmode:MovieClip;
		public var orgY;
		public var pp:prviput;
		public var pcLayer:MovieClip;
		public var bg:MovieClip;
		public var fallingSound:Sound;
		public var wosh:Sound;
		public var Pause:MovieClip;
		public var ach_btn:SimpleButton;
		public var cpLayer:MovieClip;
		public var planepoint_txt:TextField;
		public var prem_shop_w:Prem_shopMc;
		public var savePos:SharedObject;
		public var startedPlaying:Boolean;
		public var rocketLayer:MovieClip;
		public var GameOverPop:MovieClip;
		public var scoreInterval; 
		public var NextLevel = 2;
		public var parachuteTimeout;
		public var CurrentLevelText:TextField;
        public var speed;
		public var levelname_txt:TextField;
		public var achievement_data:Array;
		public var cloudLayer:MovieClip;
		public var Magneti:MovieClip;
		public var coins_n_shop;
		public var tdone:deal_msg;
		public var bloodLayer:MovieClip;
		public var score_txt:TextField;
		public var exScore_txt:TextField;
		public var gameover:MovieClip;
		public var slow_txt:TextField;
		public var recpot;
		public var diffX:Number;
		public var randomN;
		public var myMagnet;  
		public var myWingsuit;
      public var bomb;
	 public var a_mc:MovieClip;
	 public var kurcina:MovieClip;
	  public var diffY:Number;
	  public var fallspeed:Number;
	  public var swingX:Number;
      
      public var swingY:Number;
      
      public var direction:int;
	  public var Player:MovieClip;
	  public var game_paused:Boolean;
      public var bomb_used;     
      public var obstaclesDestroyed;     
      public var destroy_s:Sound;     
      public var slowmotion:Boolean;      
      public var adrenalina:Boolean;     
      public var parachuteUTimes;   
      public var usedAdrenalina;
	  public var adrenaline:MovieClip;
	  public var adrenaline_txt:TextField;
      public var adrenalineTimer;     
      public var pc_timer:int;
	  public var score;
	  public var moveY:Number;
      
      public var moveYdir:int;
      
      public var moveYspeed:Number;
	  public var dead:Boolean;
	  public var right:Boolean;
	  public var myChannel:SoundChannel;
      
      public var left:Boolean;
      
      public var exScore;
	  public var myplane:String;
      
      public var closeOneCombo;
      
      public var enemyArrs:Array;
	  public var enemyArr;
      
      public var shielded:Boolean;
      
      public var Boom:MovieClip;
      
      public var cRocketTime:Number;
      
      public var cRocketX:Number;
      
      public var rocketSpeed:Number;
      
      public var rocketFlySpeed:Number;
      
      public var cRocketMc:MovieClip;
      
      public var PPCollected;
      
      public var cloudArr:Array;
      
      public var smokeList;  
      public var pcArr;  
      public var alarmSound:Sound;     
      public var TotalXP_text;     
      public var CurrentXP_text;
		public var recOpend;
		public var bomb_txt:TextField;
		public var play_btn:SimpleButton;
		public var ccount;      
        public var count;
		private var myTrader:String = "";
		public var coins;
		public var pTab:MovieClip;
		public var gc:TextField;
		public var usurebro:trade_Security;
		public var canRestart:Boolean = false;
		public var enemyTimer:Number;
		public var wishit:WishList;
		public var inTrade = false;
		public var blockerrrr:MovieClip;
		public var giftcodes_btn:SimpleButton;
		public var trade_done_ov:MovieClip;
		public var unpack_mc:MovieClip;
		private var giftTo:String = "";
		public var cPBox:MovieClip;
		private var fbname:String = "";
		public var boxer_tab:MovieClip;
		public var memepack_tab:MovieClip;
		public var chooseMc:MovieClip;
		public var bombwave:MovieClip;
		public var Bombwave:MovieClip;
		public var track:MovieClip;
		public var slider:MovieClip;
		private var fbuid:String = "";
		public var opened = "";		
		private var access:String = "";
		private var myroom: String = "";
		private var SellersItem:String = "";
		private var SellersName:String = "";
		private var SellersID:String = "";
		private var HissID:String = "";
		private var myclick:String = "";
		private var myID:String = "";
		private var cango = true;
		public var snowW;
		public var snoweffe:MovieClip;
		public var TheClient;
		public var TheConnection;
		private var inve:items_mc;
		public var shopItemsArray:Array;
		private var usersContainer:MovieClip;
		public var pPhoto = new flash.display.Loader();
		public var lobbyconnection;
		public var user:Object;
		public var badge;
		public var items:Array;
		public var coinsi;
		public var shop_btn:SimpleButton;
		public var multi_btn:SimpleButton;
		public var usedItems:Array;
		public var myItems;
		var levl;
		var myCoins;
		var keys:Array = [];
		public var offersArr:Array;
		public var spot1 = "none";
        public var spot2 = "none";
        public var spot3 = "none";
        public var spot4 = "none";
        public var spot5 = "none"; 
        public var spot6 = "none";
		public var ItemsArray:Array;
		
		public function Script() 
		{
			stop();
			this.offersArr = [];
			this.sound_muted = false;
			this._scrollbar = new Scrollbar();
			var snowW:* = setInterval(this.onEnter,100);
			this.cq = 0;
            this.qualities = [StageQuality.HIGH,StageQuality.MEDIUM,StageQuality.LOW];
            this.q_btn.addEventListener(MouseEvent.CLICK,this.q_dwn);
			addFrameScript(0,this.frame6, 1,this.frame7);
			this.achievement_data = [{
                "n":"Noob",
                "desc":"Fail with a score under 200!",
                "id":"noob",
                "coins":5
            }, {
                "n":"First 1km",
                "desc":"Fall atleast 1000m",
                "id":"first1km",
                "coins":10
            }, {
                "n":"First 2km",
                "desc":"Fall atleast 2000m",
                "id":"first2km",
                "coins":20
            }, {
                "n":"First 3km",
                "desc":"Fall atleast 3000m",
                "id":"first3km",
                "coins":30
            }, {
                "n":"Moneymaker",
                "desc":"Collect 20 Coins in one game!",
                "id":"Moneymaker",
                "coins":30
            }, {
                "n":"Pro Moneymaker!",
                "desc":"Collect 60 Coins in one game!",
                "id":"ProMoneymaker",
                "coins":40
            }, {
                "n":"Dev Pwned!",
                "desc":"Beat game developer",
                "id":"DevPwned",
                "coins":100
            }, {
                "n":"Swift Clothes",
                "desc":"Own best wingsuit",
                "id":"SwiftClothes",
                "coins":5
            }, {
                "n":"Slowmotion Fail",
                "desc":"Die while having slowmotion powerup",
                "id":"SlowmotionFail",
                "coins":1
            }, {
                "n":"Rich",
                "desc":"Own more then 1300 Coins",
                "id":"Rich",
                "coins":30
            }, {
                "n":"Mega Rich",
                "desc":"Own more then 1600 Coins",
                "id":"MegaRich",
                "coins":60
            }, {
                "n":"Magnetic",
                "desc":"Own the best magnet!",
                "id":"Magnetic",
                "coins":60
            }, {
                "n":"Damn",
                "desc":"Die 300 times in total!",
                "id":"Damn",
                "coins":150
            }, {
                "n":"Addicted",
                "desc":"Play 600 times in total",
                "id":"Addicted",
                "coins":200
            }, {
                "n":"Borderliner",
                "desc":"Fly close to 3 enemy in a row!",
                "id":"Borderliner",
                "coins":50
            }, {
                "n":"GOD",
                "desc":"Reach level 20!",
                "id":"Leveler",
                "coins":20
            }, {
                "n":"Die",
                "desc":"Die between 790 - 810 feet",
                "id":"DEAD",
                "coins":50
            }, {
                "n":"Destroyer!",
                "desc":"Destroy 5 obstacles with one bombwave.",
                "id":"Destroyer",
                "coins":15
            }, {
                "n":"BOOM!",
                "desc":"Get killed by rocket!",
                "id":"BOOM",
                "coins":5
            }];
			this.ItemsArray = [{
                "item_n":"boxhead",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"pokerface",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"hockey",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"Sunset",
                "item_t":"normal",
                "item_p":"head"
			}, {
                "item_n":"Umbrella",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"party",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"ballon",
                "item_t":"normal",
                "item_p":"hand"
            }, {
                "item_n":"pilot",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"skull",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"bucket",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"fireman",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"Cone",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"Pan",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"anonskin",
                "item_t":"premium",
                "item_p":"skin"
			}, {
                "item_n":"Anon",
                "item_t":"rare",
                "item_p":"head"
            }, {
                "item_n":"fan",
                "item_t":"rare",
                "item_p":"hand"
            }, {
                "item_n":"Chopper",
                "item_t":"normal",
                "item_p":"head"
			}, {
                "item_n":"hallowen",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"sombrero",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"swat",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"army",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"Cereal",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"builder",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"cowboy",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"indian",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"bandana",
                "item_t":"premium",
                "item_p":"mouth"
            }, {
                "item_n":"aviator",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"Chinese",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"blabla",
                "item_t":"premium",
                "item_p":"mouth"
            }, {
                "item_n":"blueballoon",
                "item_t":"premium",
                "item_p":"hand"
            }, {
                "item_n":"SecondChance",
                "item_t":"premium",
                "item_p":"head"
			}, {
                "item_n":"Blonde",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"Anbu",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"viking",
                "item_t":"normal",
                "item_p":"head"
            }, {
                "item_n":"gas",
                "item_t":"rare",
                "item_p":"mouth"
            }, {
                "item_n":"Sword",
                "item_t":"rare",
                "item_p":"hand"
            }, {
                "item_n":"magnet",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"supermagnet",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"wingsuit",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"superwingsuit",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"bombwave",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"adrenaline",
                "item_t":"normal",
                "item_p":"powerup"
            }, {
                "item_n":"vip",
                "item_t":"premium",
                "item_p":"skin"
            }, {
                "item_n":"team",
                "item_t":"premium",
                "item_p":"skin"
            }, {
                "item_n":"TradingTicket",
                "item_t":"premium",
                "item_p":"powerup"
            }, {
                "item_n":"memepack",
                "item_t":"premium",
                "item_p":"m-pack"
            }, {
                "item_n":"AllInOne",
                "item_t":"special",
                "item_p":"AllInOne"
            }, {
                "item_n":"BoxerSet",
                "item_t":"rare",
                "item_p":"b-pack"
            }, {
                "item_n":"ballon",
                "item_t":"normal",
                "item_p":"hand"
			}, {
                "item_n":"Helmet",
                "item_t":"rare",
                "item_p":"head"
            }, {
                "item_n":"gloves",
                "item_t":"rare",
                "item_p":"hand"
            }, {
                "item_n":"really",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"trollface",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"starshoes",
                "item_t":"premium",
                "item_p":"shoes"
            }, {
                "item_n":"goldenshoes",
                "item_t":"rare",
                "item_p":"shoes"
            }, {
                "item_n":"foreveralone",
                "item_t":"premium",
                "item_p":"head"
            }, {
                "item_n":"crashland",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"xmas",
                "item_t":"premium",
                "item_p":"skin"
            }, {
                "item_n":"pussyskin",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"unstoppable",
                "item_t":"normal",
                "item_p":"skin"
             }, {
                "item_n":"dealer",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"halloween",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"donator",
                "item_t":"premium",
                "item_p":"skin"
			}, {
                "item_n":"memeskin",
                "item_t":"normal",
                "item_p":"skin"
			}, {
                "item_n":"boxerskin",
                "item_t":"normal",
                "item_p":"skin"
            }, {
                "item_n":"slowmotion",
                "item_t":"powerup",
                "item_p":"powerup"
            }, {
                "item_n":"pumpkin",
                "item_t":"special",
                "item_p":"head"
            }, {
                "item_n":"matrix",
                "item_t":"premium",
                "item_p":"skin"
            }, {
                "item_n":"armour",
                "item_t":"mega_pure",
                "item_p":"hand"
            }, {
                "item_n":"AmericanHelmet",
                "item_t":"mega_pure",
                "item_p":"head"
            }];
			this.shopItemsArray = [{
                "n":"boxhead",
                "price":20,
                "mc":"Boxhead"
            }, {
                "n":"pokerface",
                "price":100,
                "mc":"Pokerface"
            }, {
                "n":"hockey",
                "price":100,
                "mc":"Hockey"
            }, {
                "n":"Umbrella",
                "price":100,
                "mc":"Umbrella"
            }, {
                "n":"pilot",
                "price":200,
                "mc":"Pilot"
            }, {
                "n":"viking",
                "price":200,
                "mc":"Viking"
            }, {
                "n":"ballon",
                "price":300,
                "mc":"Balloon"
            }, {
                "n":"party",
                "price":200,
                "mc":"Party"
            }, {
                "n":"skull",
                "price":200,
                "mc":"Skull"
            }, {
                "n":"bucket",
                "price":200,
                "mc":"Bucket"
            }, {
                "n":"fireman",
                "price":300,
                "mc":"Fireman"
            }, {
                "n":"Cone",
                "price":100,
                "mc":"Cone"
            }, {
                "n":"Pan",
                "price":100,
                "mc":"Pan"
            }, {
                "n":"Chopper",
                "price":50,
                "mc":"Chopper"
            }, {
                "n":"sombrero",
                "price":300,
                "mc":"Sombrero"
            }, {
                "n":"swat",
                "price":350,
                "mc":"Swat"
            }, {
                "n":"magnet",
                "price":100,
                "mc":"Magnet"
            }, {
                "n":"supermagnet",
                "price":250,
                "mc":"Super magnet"
            }, {
                "n":"wingsuit",
                "price":70,
                "mc":"Wingsuit"
            }, {
                "n":"superwingsuit",
                "price":200,
                "mc":"Super wingsuit"
            }, {
                "n":"bombwave",
                "price":10,
                "mc":"Bombwave"
            }, {
                "n":"slowmotion",
                "price":30,
                "mc":"Slowmotion"
            }, {
                "n":"adrenaline",
                "price":80,
                "mc":"Adrenaline"
            }, {
                "n":"dealer",
                "price":500,
                "mc":"Dealer"
            }, {
                "n":"unstoppable",
                "price":400,
                "mc":"Unstoppable"
            }, {
                "n":"crashland",
                "price":200,
                "mc":"Crashland"
            }, {
                "n":"pussyskin",
                "price":150,
                "mc":"Pussyskin"
            }];
			this.savePos = SharedObject.getLocal("saveX-Y");
			fbname = root.loaderInfo.parameters.fbname || "Aleksa";
			access = root.loaderInfo.parameters.fb_access_token || "EAASB1HPUyKwBAGS6k7o8OBN3zZAyhgw6WTZBU9ozSa0DfvEPZCO011rAfRYPOLJp9Ox8RIrsLiBzFjRMNyq0UxkSmVvPSWB0p9ZBJkGDJhK2iNtkUyCGXxbjO8A3JeEhUvYfxbGdMV3hVxuWts7SaHBL6ZAOxpdSI2t63BajzSXFaUUZAo5xdKEFWGFORXEAQZD";
			PlayerIO.quickConnect.facebookOAuthConnect(stage, "crash-land-cwwuzgpmb0iwwlxbnjj9jw", access, "public", connectfb, function ():void
			{
				alert("Error connecting to facebook");
			})
			/*stage.addEventListener(MouseEvent.RIGHT_CLICK, function(e:MouseEvent):void
								   {
									  // alert("Right click is disabled");
								   });*/
		}
		public function getIType(_arg_1:*){
            var _local_2:* = 0;
            while (_local_2 < this.ItemsArray.length)
            {
                if (this.ItemsArray[_local_2].item_n == _arg_1)
                {
                    return (this.ItemsArray[_local_2].item_t);
                };
                _local_2++;
            };
            return (-1);
        }
		public function LoadGame()
		{
			myItems = TheClient.payVault.items;
			myCoins = TheClient.payVault.coins;
			gotoAndStop(2);
			this.mute_btn.visible = true;
			this.snow_btn.visible = true;
			this.q_btn.visible = true;
			{
				if (user.skins == "none")
				{
					this.pp = new prviput();
			addChild(pp);
			pp.x = 398;
			pp.y = 259;
			pp.crveni.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("Ajmo crvenbac");
											   user.skins = "red";
											   removeChild(pp);
											   TheConnection.send("idkrly", "red");
										   
				})
				pp.plavi.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("Idemo plavi");
											   user.skins = "blue";
											   removeChild(pp);
											   TheConnection.send("idkrly", "blue");
											   })
				pp.zuti.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("Daj zutog vamo");
											   user.skins = "yellow";
											   removeChild(pp);
											   TheConnection.send("idkrly", "yellow");
											   }) 
			    pp.zeleni.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("Biti ili ne biti :o");
											   user.skins = "green";
											   removeChild(pp);
											   TheConnection.send("idkrly", "green");
											   })
				}
				
			}
			
			stage.addEventListener(MouseEvent.RIGHT_CLICK, function(e:MouseEvent):void
								   {
									  // alert("Right click is disabled");
								   });
			coins_txt.text = myCoins;
			this.CurrentLevelText.text = (" " + int(this.user.CurrentLevel));
			this.rounds_txt.text = (" " + this.user.rounds);
			this.TotalXPText.text = (" " + this.user.TotalXP)
			this.loadLevelName();
			var profileurl = "https://graph.facebook.com/" + fbuid + "/picture";
			var pic = new Loader();
			pic.load(new URLRequest(profileurl));
			wb_disp.gotoAndPlay(2);
			wb_disp.inner.fbname_txt.text = fbname;
			this.fallingSound = new falling_s();
            this.myChannel = new SoundChannel();
			inventory_btn.addEventListener(MouseEvent.CLICK, openInventory);
			shop_btn.addEventListener(MouseEvent.MOUSE_UP, this.openChoose);
			ach_btn.addEventListener(MouseEvent.MOUSE_UP, this.openAW);
			play_btn.addEventListener(MouseEvent.CLICK,this.play_tab);
			multi_btn.addEventListener(MouseEvent.MOUSE_UP, this.openRooms);
			mute_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.mute_down);
			snow_btn.addEventListener(MouseEvent.CLICK,this.letitsnow);
			loadHighscores();
			if(this.TheClient.payVault.has("BoxerSet") && this.TheClient.payVault.has("memepack"))
			{
				this.boxer_tab.gotoAndPlay(2);
				this.memepack_tab.gotoAndPlay(2);
				this.opened = "b-pack";
				this.opened = "m-pack";
				return;
			
			}
			if (this.TheClient.payVault.has("BoxerSet"))
                    {
			             this.boxer_tab.gotoAndPlay(2);
                        this.opened = "b-pack";
                        return;
						}
			if (this.TheClient.payVault.has("memepack"))
                    {
			            this.memepack_tab.gotoAndPlay(2);
                        this.opened = "m-pack";
                        return;
						}
		}
      
      public function onEnter() : void
      {
         var _loc1_:Snow = null;
         if(this.snowing == true)
         {
            _loc1_ = new Snow();
            _loc1_.gotoAndStop(Math.round(Math.ceil(Math.random() * 9)));
            _loc1_.x = 550 * Math.random();
            _loc1_.y = 0;
            _loc1_.width = _loc1_.height = 1 + 5 * Math.random();
            _loc1_.xSpeed = -2 + 4 * Math.random();
            _loc1_.ySpeed = 1 + 4 * Math.random();
            _loc1_.at = -0.001 - 0.001 * Math.random();
            _loc1_.vt = 0;
            this.snoweffe.addChild(_loc1_);
            _loc1_.addEventListener(Event.ENTER_FRAME,this.onSnowEnter);
         }
      }
      
      public function onSnowEnter(param1:Event) : void
      {
         var _loc2_:Snow = param1.currentTarget as Snow;
         _loc2_.x = _loc2_.x + _loc2_.xSpeed;
         _loc2_.y = _loc2_.y + _loc2_.ySpeed;
         if(_loc2_.y >= 522)
         {
            _loc2_.addEventListener(Event.ENTER_FRAME,this.onMeltingEnter);
         }
      }
      
      public function onMeltingEnter(param1:Event) : void
      {
         var _loc2_:Snow = param1.currentTarget as Snow;
         this.snoweffe.addChild(_loc2_);
         _loc2_.removeEventListener(Event.ENTER_FRAME,this.onSnowEnter);
         _loc2_.vt = _loc2_.vt + _loc2_.at;
         _loc2_.alpha = _loc2_.alpha + _loc2_.vt;
         if(_loc2_.alpha <= 0)
         {
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.onMeltingEnter);
            this.snoweffe.removeChild(_loc2_);
         }
		}
      
      public function q_dwn(param1:MouseEvent) : void
      {
         var _loc2_:* = this;
         var _loc3_:* = this.cq - 1;
         _loc2_.cq = _loc3_;
         if(this.cq < 0)
         {
            this.cq = 2;
         }
         stage.quality = this.qualities[this.cq];		
		}
      
      public function play_tab(param1:*) : *
      {
         this.pTab = new playTab();
         this.pTab.x = 375;
         this.pTab.y = 250;
         addChild(this.pTab);
		
		}
      
      public function letitsnow(param1:*) : *
      {
         if(this.snowing == true)
         {
            this.snowing = false;
			this.snow_btn.gotoAndStop(2);
         }
         else
         {
            this.snowing = true;
			this.snow_btn.gotoAndStop(1);
         }
		}
        public function mute_down(_arg_1:MouseEvent){
            if (this.sound_muted)
            {
                SoundMixer.soundTransform = new SoundTransform(0.5);
                this.sound_muted = false;
                this.mute_btn.gotoAndStop(1);
            }
            else
            {
                SoundMixer.soundTransform = new SoundTransform(0);
                this.sound_muted = true;
                this.mute_btn.gotoAndStop(2);
            };
		
		}
      
      public function loadOutfit() : *
      {
         this.Player.Player.Player.head.gotoAndStop(this.user.headItem);
		 this.Player.Player.Player.mouth.gotoAndStop(this.user.mouthItem);
		 this.Player.Player.Player.hands.gotoAndStop(this.user.handItem);
		 this.Player.Player.Player.shoes.gotoAndStop(this.user.shoesItem);
		
		}
      
      public function gotoGame(param1:*) : *
      {
         removeChild(this.pTab);
		 this.checkforachievement();
         gotoAndStop(6);
		 this.mute_btn.visible = true;
		 this.snow_btn.visible = true;
		 this.q_btn.visible = true;
		 this.game_paused = false;
		 this.bg.gotoAndStop(this.user.bg);
		 //this.sc_w.close_btn.addEventListener(MouseEvent.CLICK, this.hideSC);
         this.user.rounds = this.user.rounds + 1;
		 TheConnection.send("idkrly", "runda");
         //this.so.flush();
         if(this.user.rounds > 599)
         {
            this.addAchievement("Addicted");
         }
      }
        public function checkforachievement(){
            if (this.TheClient.payVault.has("supermagnet"))
            {
                this.addAchievement("Magnetic");
            };
            if (this.TheClient.payVault.has("superwingsuit"))
            {
                this.addAchievement("SwiftClothes");
            };
	  
	  }
      
      public function pauseGame() : *
      {
         if(!this.game_paused && !this.dead)
         {
            //this.showAd("image");
            this.Pause.visible = true;
            this.Pause.gotoAndPlay(1);
            this.game_paused = true;
            if(this.score == 394)
            {
               this.addAchievement("sara");
            }
         }
         else
         {
            this.destroyAd();
            this.Pause.visible = false;
            this.game_paused = false;
         }   
	  }
        public function hideSC(_arg_1:*){
            this.hideDialog();
        }
        public function showSC(){
            if (this.usedBefore == false)
            {
                this.showDialog();
                //this.setup();
            };
        }
        public function loadPlayerPos(){
            if (this.user.SecondChance > 0)
            {
                stage.addEventListener(KeyboardEvent.KEY_DOWN, this.key_pressed);
                stage.addEventListener(KeyboardEvent.KEY_UP, this.keys_released);
                //this["backintime"].play(0, 0, new SoundTransform(0.5));
                this.Player.x = this.savePos.data.cordX;
                this.Player.y = this.savePos.data.cordY;
                this.right = false;
                this.left = false;
                this.moveYdir = 0;
                this.direction = 0;
                this.exScore = 0;
                this.gameRestarted = true;
                this.usedBefore = true;
                this.user.SecondChance--;
                TheConnection.send("idkrly", "second");
                this.gameover.visible = false;
                this.Player.visible = true;
                this.dead = false;
                //this["destroy_s"].play(0, 0, new SoundTransform(0.5));
                this.bombwave.x = this.Player.x;
                this.bombwave.y = this.Player.y;
                this.bombwave.gotoAndPlay(0);
				setTimeout(this.sklanjajovo, 100);
                this.adrenalina = false;
                this.canRestart = false;
                clearTimeout(this.parachuteTimeout);
                this.stopSlowmotion();
            };
			/*}
        public function setup(){
            if (this.TheClient.payVault.has("SecondChance") && (this.user.SecondChance == 0))
            {
                this.sc_w.gotoAndStop(2);
                this.sc_w.setup();
            }
            else
            {
                this.sc_w.gotoAndStop(1);
            };*/
        }
        public function overoutlistener(_arg_1:MovieClip){
            _arg_1.addEventListener(MouseEvent.MOUSE_OVER, this.mcover);
            _arg_1.addEventListener(MouseEvent.MOUSE_OUT, this.mcout);
		}
        public function mcover(_arg_1:MouseEvent){
            _arg_1.target.gotoAndStop("2");
        }
        public function mcout(_arg_1:MouseEvent){
            _arg_1.target.gotoAndStop("1");
		}
        public function showDialog(){
			Tweener.addTween(this.sc_w, {
                "y":430,
                "time":0.45
            });
        }
        public function hideDialog(){
            Tweener.addTween(this.sc_w, {
                "y":-58,
                "time":0.3
            });
	  
	  
	  
	  }
      
      public function destroyAd() : *
      {
	  
	  
	  }
      
      public function checkTimer() : void
      {
         this.user.playTime = this.user.playTime + 1;
         //this.so.flush();
         var _loc1_:int = 0;
         /*while(_loc1_ < this.achievement_data.length)
         {
            if(this.achievement_data[_loc1_].time > 0 && this.user.playTime > this.achievement_data[_loc1_].time)
            {
               if(this.user.achievement.indexOf(this.achievement_data[_loc1_].id) == -1)
               {
                  this.addAchievement(this.achievement_data[_loc1_].id);
               }
            }
            _loc1_++;
         }*/
      }
      
      public function onPlayerSpawn() : *
      {
         if(MovieClip(root).TheClient.payVault.has("wingsuit") && MovieClip(root).TheClient.payVault.has("superwingsuit"))
         {
			this.Wingsuit.visible = true;
			this.Wingsuit.gotoAndStop(2);
			this.Player.Player.wings.visible = true;
            this.Player.Player.wings.gotoAndStop(3);
            this.myWingsuit = 2;
         }
         if(MovieClip(root).TheClient.payVault.has("wingsuit"))
         {
            this.Wingsuit.visible = true;
			this.Wingsuit.gotoAndStop(1);
			this.Player.Player.wings.gotoAndStop(2);
            this.Player.Player.wings.visible = true;
            this.myWingsuit = 1;
         }
         if(MovieClip(root).TheClient.payVault.has("superwingsuit"))
         {
            this.Wingsuit.visible = true;
			this.Wingsuit.gotoAndStop(2);
			this.Player.Player.wings.visible = true;
            this.Player.Player.wings.gotoAndStop(3);
            this.myWingsuit = 2;
         }
         this.Player.visible = true;
         this.Player.x = -55;
         this.Player.y = 70;
         stage.addEventListener(Event.ENTER_FRAME,this.loop);
		 stage.addEventListener(KeyboardEvent.KEY_DOWN, this.key_pressed);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.keys_released);
         this.swingX = 10;
         this.swingY = 0;
         this.moveYdir = 0;
         this.direction = 0;
         this.fallspeed = 14;
		 this.score = 0;
		 this.Pause.visible = false;
         this.right = false;
         this.left = false;
         this.slowmotion = false;
         this.adrenalina = false;
         this.enemyArrs = [];
         this.exScore = 0;
         this.closeOneCombo = 0;
         this.dead = false;
		 this.loadOutfit();
         this.game_paused = false;
         this.enemyTimer = 30;
         this.PPCollected = 0;
         this.cRocketTime = 0;
         this.cRocketX = 0;
         this.rocketSpeed = 4;
         this.rocketFlySpeed = 27;
         this.bomb_used = 1;
		 stage.focus = stage;
         this.parachuteUTimes = 1;
         this.pc_timer = 0;
         if(this.TheClient.payVault.has("SecondChance"))
			{
				this.user.SecondChance = 1;
				TheConnection.send("idkrly", "secondchance");
			};
		 if (this.TheClient.payVault.has("SecondChance") && (this.user.SecondChance > 0))
            {
                this.sc_w.gotoAndStop(2);
				this.sc_w.left.text = user.SecondChance + " left";
		    };
		 if (this.TheClient.payVault.has("vip"))
            {
                this.parachuteUTimes = 10;
                this.bomb_used = 10;
		 };
		 if (this.TheClient.payVault.count("bombwave") > 0)
            {
                this.bomb_txt.text = this.TheClient.payVault.count("bombwave").toString();
                this.bomb = 1;
                this.Bombwave.visible = true;
         };
            if (this.TheClient.payVault.count("slowmotion") > 0)
            {
                this.slow_txt.text = this.TheClient.payVault.count("slowmotion").toString();
                this.tmode.visible = true;
         };
            if (this.TheClient.payVault.count("adrenaline") > 0)
            {
                this.usedAdrenalina = 0;
                this.adrenaline_txt.text = this.TheClient.payVault.count("adrenaline").toString();
                this.adrenaline.visible = true;
            };
            if (this.TheClient.payVault.count("adrenaline") < -1)
            {
                this.usedAdrenalina = 0;
         }
		 if(MovieClip(root).TheClient.payVault.has("magnet") && MovieClip(root).TheClient.payVault.has("supermagnet"))
         {
            this.Magneti.gotoAndStop(2);
            this.Magneti.visible = true;
            this.myMagnet = 2;
		 }
         if(MovieClip(root).TheClient.payVault.has("magnet"))
         {
            this.Magneti.gotoAndStop(1);
            this.Magneti.visible = true;
            this.myMagnet = 1;
         }
         if(MovieClip(root).TheClient.payVault.has("supermagnet"))
         {
            this.Magneti.gotoAndStop(2);
            this.Magneti.visible = true;
            this.myMagnet = 2;
         }
         this.myChannel = this["fallingSound"].play(0,99,new SoundTransform(0.6));
         /*Tweener.addTween(this.tutorial,{
            "alpha":0,
            "time":0.3,
            "transition":"easeOutBack",
            "onComplete":function():*
            {
               removeChild(tutorial);
            }*/    
	  }
      
      public function bombwaves() : *
      {
         if(this.Player.visible == true && (this.TheClient.payVault.has("bombwave") && (this.TheClient.payVault.count("bombwave") > 0) && (this.bomb == 1)))
         {
            if(this.bomb_used == 0)
            {
               return;
            }
            this.TheClient.payVault.consume([this.TheClient.payVault.first("bombwave")], function (){
                        bomb_txt.text = TheClient.payVault.count("bombwave").toString();
                    }, function (_arg_1:*){
                        trace(("error with bombwave : " + _arg_1));
                    });
                    //this["destroy_s"].play(0, 0, new SoundTransform(0.5));
                    //this.white_ground.visible = false;
                    //this.shakeTime = 6;
                    this.bombwave.x = this.Player.x;
                    this.bombwave.y = this.Player.y;
                    this.bombwave.gotoAndPlay(0);
                    this.bomb = 0;
                    this.bomb_used = (this.bomb_used - 1);
                    this.Bombwave.visible = false;
                    setTimeout(this.activeBomb, 100);
					trace("sankam ti po mrtvima")
         } 
      }
      
      public function sklanjajovo() : *
      {
         this.bombwave.x = -107;
         this.bombwave.y = -308;
		 trace("skije za gospodina")
	  }
      
      public function activeBomb() : *
      {
         this.bombwave.x = -107;
         this.bombwave.y = -308;
		 this.bomb_txt.text = this.TheClient.payVault.count("bombwave").toString();
         this.TheClient.payVault.refresh(function (){
                if ((((TheClient.payVault.count("bombwave") > 0)) && (!((bomb_used == 0)))))
                {
                    Bombwave.visible = true;
                    bomb = 1;
					trace("skijam ti po mrtvima")
                };
            });
      }
        public function slowMotion(){
            if (this.slowmotion)
            {
                return;
            };
            if ((((((((((this.Player.visible == true)) && (this.TheClient.payVault.has("slowmotion")))) && ((this.TheClient.payVault.count("slowmotion") > 0)))) && (!(this.adrenalina)))) && (!((this.parachuteUTimes == 0)))))
            {
                this.TheClient.payVault.consume([this.TheClient.payVault.first("slowmotion")], function (){
                    slow_txt.text = TheClient.payVault.count("slowmotion").toString();
                }, function (_arg_1:*){
                    trace(("error with slowmotion : " + _arg_1));
                });
                this.parachuteUTimes = (this.parachuteUTimes - 1);
                this.tmode.visible = false;
                this.slowmotion = true;
                this.parachuteTimeout = setTimeout(this.stopSlowmotion, 10000);
            };
        }
        public function stopSlowmotion(){
            if ((((this.TheClient.payVault.count("slowmotion") > 0)) && (!((this.parachuteUTimes == 0)))))
            {
                this.tmode.visible = true;
            };
            this.slowmotion = false;
     }
        public function useAdrenalina(){
            if (((((((this.TheClient.payVault.has("adrenaline")) && ((this.TheClient.payVault.count("adrenaline") > 0)))) && (!(this.slowmotion)))) && (!(this.adrenalina))))
            {
                if ((((this.usedAdrenalina > 0)) && (!(this.TheClient.payVault.has((("v" + "i") + "p"))))))
                {
                    return;
                };
                if (this.usedAdrenalina == 2)
                {
                    this.adrenaline.visible = false;
                    return;
                };
                this.TheClient.payVault.consume([this.TheClient.payVault.first("adrenaline")], function (){
                    adrenaline_txt.text = TheClient.payVault.count("adrenaline").toString();
                }, function (_arg_1:*){
                    trace(("error with adrenaline : " + _arg_1));
                });
                this.drugz.gotoAndStop(2);
                this.usedAdrenalina = (this.usedAdrenalina + 1);
                this.adrenaline.visible = false;
                this.adrenalina = true;
                this.adrenalineTimer = 200;
            };
      }
      
      public function createCloud() : *
      {
         var _loc1_:* = undefined;
         if(this.game_paused)
         {
            return;
         }
         if(currentFrame == 6)
         {
            _loc1_ = new cloud();
            _loc1_.y = 700;
            _loc1_.x = Math.random() * 750;
            _loc1_.alpha = Math.random() * 0.2 + 0.5;
            this.cloudLayer.addChild(_loc1_);
            _loc1_.gotoAndStop(Math.round(Math.ceil(Math.random() * 21)));
            this.cloudArr.push({
               "mc":_loc1_,
               "speed":1 + Math.random() * 0.4
            });
         }
     /* }
      
      public function addAchievement(param1:String) : *
      {
         var _loc5_:* = undefined;
         var _loc2_:* = true;
         var _loc3_:uint = 0;
         while(_loc3_ < this.user.achievement.length)
         {
            if(this.user.achievement[_loc3_] == param1)
            {
               _loc2_ = false;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            return;
         }
         var _loc4_:Object = {"id":"none"};
         for(_loc5_ in this.achievement_data)
         {
            if(this.achievement_data[_loc5_].id == param1)
            {
               _loc4_ = this.achievement_data[_loc5_];
            }
         }
         if(_loc4_.id == "none")
         {
            trace("unknown achievement!");
            return;
         }
         this.user.achievement.push(_loc4_.id);
         //this.so.flush();
         this.showNewAchievement(_loc4_);*/
	/*}
      
      public function showNewAchievement(param1:Object) : *
      {
         this.a_mc.gotoAndPlay(2);
         this.a_mc.ach.name_txt.text = param1.desc;
         this.a_mc.ach.inners.gotoAndStop(param1.id);
         this.a_mc.ach.coinsWin_txt.text = (param1.coins < 0?"-":"+") + param1.coins;
         this.user.coins = this.user.coins + param1.coins;
         //this.so.flush();*/
	  
	  
	  }
      
      public function loop(param1:*) : *
      {
         var _loc6_:dying_nub = null;
         var _loc7_:dying_nub = null;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         if(this.game_paused)
         {
            return;
         }
         this.score_txt.text = this.score + "";
         this.planepoint_txt.text = this.PPCollected + "";
         this.exScore_txt.text = this.exScore + "";
         this.CurrentXP_text = Math.round(this.score / 300);
         this.TotalXP_text = Math.round(this.score / 300);
         this.Collected.x = this.Player.x;
         this.Collected.y = this.Player.y;
         if(this.enemyTimer < 0)
         {
            if(!this.dead)
            {
               this.enemySetup();
            }
            this.enemyTimer = 25 - Math.round(this.score / 200);
         }
         else
         {
            this.enemyTimer = this.enemyTimer - 1;
         }
         if(this.ccount >= 45)
         {
            this.createCloud();
            this.ccount = 0;
         }
         else
         {
            this.ccount++;
         }
         if(this.count >= 30)
         {
            this.checkTimer();
            this.count = 0;
         }
         else
         {
            this.count++;
         }
         if(this.cPBox)
         {
            this.cPBox.y = this.cPBox.y - this.fallspeed / 3;
            if(this.Player.Player.hitbox.hitTestObject(this.cPBox.inner.hitbox))
            {
               if(this.cPBox.inner.gift.currentFrame == 0 || this.cPBox.inner.gift.currentFrame == 1)
               {
                  this.PPCollected = this.PPCollected + 2;
                  this["wosh"].play(0,0,new SoundTransform(1));
               }
               if(this.cPBox.inner.gift.currentFrame == 2)
               {
                  this.CurrentXP_text = this.CurrentXP_text + 3;
                  this.TotalXP_text = this.TotalXP_text + 3;
               }
               this.cpLayer.removeChild(this.cPBox);
               this.cPBox = null;
            }
            else if(this.cPBox.y < -200)
            {
               this.cpLayer.removeChild(this.cPBox);
               this.cPBox = null;
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.enemyArrs.length)
         {
            this.enemyArrs[_loc2_].mc.y = this.enemyArrs[_loc2_].mc.y - (this.fallspeed * this.enemyArrs[_loc2_].speed - this.enemyArrs[_loc2_].swingY);
            this.enemyArrs[_loc2_].mc.x = this.enemyArrs[_loc2_].mc.x + this.enemyArrs[_loc2_].swingX;
            this.enemyArrs[_loc2_].swingX = this.enemyArrs[_loc2_].swingX * 0.9;
            this.enemyArrs[_loc2_].swingY = this.enemyArrs[_loc2_].swingY * 0.9;
            this.enemyArrs[_loc2_].mc.rotation = this.enemyArrs[_loc2_].mc.rotation + this.enemyArrs[_loc2_].rot;
            if(this.enemyArrs[_loc2_].y < -100)
            {
               this.boxLayer.removeChild(this.enemyArrs[_loc2_].mc);
               this.enemyArrs.splice(_loc2_,1);
            }
            _loc2_ = _loc2_ + 1;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.cloudArr.length)
         {
            this.cloudArr[_loc3_].mc.y = this.cloudArr[_loc3_].mc.y - this.cloudArr[_loc3_].speed;
            if(this.cloudArr[_loc3_].y < -200)
            {
               this.cloudLayer.removeChild(this.cloudArr[_loc3_].mc);
               this.cloudArr.splice(_loc3_,1);
            }
            _loc3_++;
         }
         if(!this.dead)
         {
            if(!this.adrenalina)
            {
               this.score = this.score + 1;
               this.fallspeed = (14 + this.score / 800) * (1 - 0.5 * Number(this.slowmotion));
            }
            else
            {
               this.score = this.score + 3;
               this.fallspeed = (14 + this.score / 800) * (3 + 0.5 * Number(this.adrenalina));
            }
            if(this.adrenalineTimer > 0 && this.adrenalina)
            {
               this.adrenalineTimer--;
            }
            if(this.pc_timer >= 500)
            {
               this.randomN = Math.round(Math.random() * 3);
               if(this.randomN == 2)
               {
                  this.rollPlaneBox();
               }
               this.pc_timer = 0;
            }
            else
            {
               this.pc_timer = this.pc_timer + 1;
            }
            if(this.adrenalineTimer == 0 && this.adrenalina)
            {
               if(this.user.adrenaline > 0)
               {
                  this.adrenaline.visible = false;
               }
               this.drugz.gotoAndStop(1);
               this.adrenalina = false;
            }
            if(this.score >= 1000)
            {
               this.addAchievement("first1km");
            }
            if(this.score >= 2000)
            {
               this.addAchievement("first2km");
            }
            if(this.score >= 3000)
            {
               this.addAchievement("first3km");
            }
            if(this.score > 4023 && this.score < 4100)
            {
               this.addAchievement("DevPwned");
            }
            _loc2_ = 0;
            while(_loc2_ < this.enemyArrs.length)
            {
               if(this.Player.Player.hitbox.hitTestObject(this.enemyArrs[_loc2_].mc.inner.hitbox) && !this.shielded && !this.adrenalina)
               {
                  //this["hit" + Math.ceil(Math.random() * 2)].play(0,0,new SoundTransform(0.5));
                  this.Player.visible = false;
                  this.boxHit(this.enemyArrs[_loc2_]);
                  _loc6_ = new dying_nub();
                  _loc6_.x = this.Player.x;
                  _loc6_.y = this.Player.y;
                  //_loc6_.head.head.gotoAndStop(this.user.headItem);
                  this.bloodLayer.addChild(_loc6_);
                  this.onPlayerDeath();
                  return;
               }
               if(Math.abs(this.enemyArrs[_loc2_].mc.x + this.boxLayer.x - this.Player.x) < 60 && this.enemyArrs[_loc2_].mc.y + this.boxLayer.y < this.Player.y - 8 && this.enemyArrs[_loc2_].mc.y + this.boxLayer.y > this.Player.y - 24 && !this.enemyArrs[_loc2_].soClose && !this.adrenalina)
               {
                  this.enemyArrs[_loc2_].soClose = true;
                  this.close_disp.gotoAndPlay(2);
                  this.close_disp.x = this.enemyArrs[_loc2_].mc.x + this.boxLayer.x;
                  this.close_disp.y = this.Player.y;
                  this.exScore = this.exScore + 10;
                  this.closeOneCombo = this.closeOneCombo + 1;
                  if(this.closeOneCombo >= 2)
                  {
                     this.addAchievement("Borderliner");
                  }
               }
               else if(this.enemyArrs[_loc2_].mc.y + this.boxLayer.y < this.Player.y - 24 && !this.enemyArrs[_loc2_].pastPlayer)
               {
                  this.enemyArrs[_loc2_].pastPlayer = true;
                  if(!this.enemyArrs[_loc2_].soClose)
                  {
                     this.closeOneCombo = 0;
                  }
               }
               if(this.bombwave.hitTestObject(this.enemyArrs[_loc2_].mc))
               {
                  this.boxLayer.removeChild(this.enemyArrs[_loc2_].mc);
                  this.enemyArrs.splice(_loc2_,1);
                  this.obstaclesDestroyed++;
               }
               _loc2_ = _loc2_ + 1;
            }
         }
         if(this.obstaclesDestroyed >= 4)
         {
            this.addAchievement("Destroyer");
         }
         else
         {
            this.obstaclesDestroyed = 0;
         }
         if(this.cRocketMc)
         {
            this.cRocketMc.y = this.cRocketMc.y - this.rocketFlySpeed;
            this.addSmoke(this.cRocketMc.x,this.cRocketMc.y + 50);
            this.rocketLayer.setChildIndex(this.cRocketMc,this.rocketLayer.numChildren - 1);
            if(this.Player.Player.hitbox.hitTestObject(this.cRocketMc.hitbox) && !this.dead && !this.shielded && !this.adrenalina)
            {
               this.Boom = new Bamm();
               this.Boom.x = this.cRocketMc.x;
               this.Boom.y = this.cRocketMc.y;
               addChild(this.Boom);
               this.rocketLayer.removeChild(this.cRocketMc);
               this.cRocketMc = null;
               this.Player.visible = false;
               _loc7_ = new dying_nub();
               _loc7_.x = this.Player.x;
               _loc7_.y = this.Player.y;
               //_loc7_.head.head.gotoAndStop(this.user.outfit.head);
               this.bloodLayer.addChild(_loc7_);
               this.addAchievement("BOOM");
               this.onPlayerDeath();
               return;
            }
            if(this.bombwave.hitTestObject(this.cRocketMc.hitbox))
            {
               this.rocketLayer.removeChild(this.cRocketMc);
               this.cRocketMc = null;
               return;
            }
            if(this.cRocketMc.y < -200)
            {
               this.rocketLayer.removeChild(this.cRocketMc);
               this.cRocketMc = null;
            }
         }
         if(this.cRocketTime > 0)
         {
            this.cRocketTime = this.cRocketTime - 1;
            if(Math.abs(this.Player.x - this.cRocketX) > this.rocketSpeed * 2)
            {
               if(this.Player.x < this.cRocketX)
               {
                  this.cRocketX = this.cRocketX - this.rocketSpeed;
               }
               else
               {
                  this.cRocketX = this.cRocketX + this.rocketSpeed;
               }
            }
            this.rocket_warning.x = this.cRocketX;
            if(this.cRocketTime <= 33 && this.cRocketMc == null)
            {
               this.spawnRocketAt(this.cRocketX);
            }
            if(this.cRocketMc != null)
            {
               this.cRocketMc.x = this.cRocketX;
            }
            if(this.cRocketTime <= 0)
            {
               this.rocket_warning.x = -100;
            }
         }
         var _loc4_:* = 0;
         while(_loc4_ < this.smokeList.length)
         {
            this.smokeList[_loc4_].mc.alpha = this.smokeList[_loc4_].mc.alpha - 0.008;
            this.smokeList[_loc4_].mc.scaleY = this.smokeList[_loc4_].mc.scaleY + 0.018;
            this.smokeList[_loc4_].mc.scaleX = this.smokeList[_loc4_].mc.scaleY + 0.018;
            this.smokeList[_loc4_].mc.rotation = this.smokeList[_loc4_].mc.rotation + this.smokeList[_loc4_].rot;
            this.smokeList[_loc4_].rot = this.smokeList[_loc4_].rot * 0.96;
            this.smokeList[_loc4_].mc.y = this.smokeList[_loc4_].mc.y - this.fallspeed / 3;
            if(this.smokeList[_loc4_].mc.alpha <= 0)
            {
               this.rocketLayer.removeChild(this.smokeList[_loc4_].mc);
               this.smokeList.splice(_loc4_,1);
               _loc4_--;
            }
            _loc4_ = _loc4_ + 1;
         }
         var _loc5_:* = 0;
         while(_loc5_ < this.pcArr.length)
         {
            this.pcArr[_loc5_].mc.y = this.pcArr[_loc5_].mc.y - this.fallspeed / 2;
            _loc9_ = this.getDistance(this.pcArr[_loc5_].mc.x,this.pcArr[_loc5_].mc.y,this.Player.x,this.Player.y);
            if(_loc9_ < 140)
            {
               if(this.myMagnet == 1)
               {
                  if(this.Player.visible == true)
                  {
                     this.Player.magnet_effect.play();
                     _loc8_ = this.getRotation(this.pcArr[_loc5_].mc.x,this.pcArr[_loc5_].mc.y,this.Player.x,this.Player.y);
                     this.pcArr[_loc5_].mc.x = this.pcArr[_loc5_].mc.x + Math.cos(_loc8_ / 180 * Math.PI) * ((140 - _loc9_) / 100) * 10;
                     this.pcArr[_loc5_].mc.y = this.pcArr[_loc5_].mc.y + Math.sin(_loc8_ / 180 * Math.PI) * ((140 - _loc9_) / 100) * 10;
                  }
               }
            }
            if(_loc9_ < 200)
            {
               if(this.myMagnet == 2)
               {
                  if(this.Player.visible == true)
                  {
                     this.Player.supermagnet_effect.play();
                     _loc8_ = this.getRotation(this.pcArr[_loc5_].mc.x,this.pcArr[_loc5_].mc.y,this.Player.x,this.Player.y);
                     this.pcArr[_loc5_].mc.x = this.pcArr[_loc5_].mc.x + Math.cos(_loc8_ / 180 * Math.PI) * ((200 - _loc9_) / 100) * 10;
                     this.pcArr[_loc5_].mc.y = this.pcArr[_loc5_].mc.y + Math.sin(_loc8_ / 180 * Math.PI) * ((200 - _loc9_) / 100) * 10;
                  }
               }
            }
            if(this.Player.Player.hitbox.hitTestObject(this.pcArr[_loc5_].mc) && !this.dead)
            {
               this.PPCollected = this.PPCollected + 1;
               if(this.TheClient.payVault.coins >= 1300)
               {
                  this.addAchievement("Rich");
               }
               if(this.TheClient.payVault.coins >= 1600)
               {
                  this.addAchievement("MegaRich");
               }
               if(this.PPCollected >= 20)
               {
                  this.addAchievement("Moneymaker");
               }
               if(this.PPCollected >= 40)
               {
                  this.addAchievement("ProMoneymaker");
               }
               this.Collected.gotoAndPlay(2);
               this.pcLayer.removeChild(this.pcArr[_loc5_].mc);
               this.pcArr.splice(_loc5_,1);
               _loc5_--;
            }
            else if(this.pcArr[_loc5_].mc.y <= -100)
            {
               this.pcLayer.removeChild(this.pcArr[_loc5_].mc);
               this.pcArr.splice(_loc5_,1);
               _loc5_--;
            }
            _loc5_ = _loc5_ + 1;
         }
         this.swingX = this.swingX + 3 * this.direction;
         if(this.swingX > 14)
         {
            this.swingX = 14;
         }
         else if(this.swingX < -14)
         {
            this.swingX = -14;
         }
         if(this.swingX > 0)
         {
            this.Player.scaleX = 1;
         }
         else
         {
            this.Player.scaleX = -1;
         }
         this.Player.x = this.Player.x + this.swingX;
         this.swingX = this.swingX * 0.97;
         if(this.Player.x > 700)
         {
            this.Player.x = 700;
            this.swingX = this.swingX * 0.3;
         }
         else if(this.Player.x < 50)
         {
            this.Player.x = 50;
            this.swingX = this.swingX * 0.3;
         }
         this.moveY = this.moveY + this.moveYdir * this.moveYspeed;
         this.Player.y = this.Player.y + this.moveY;
         this.moveY = this.moveY * 0.9;
         if(this.Player.y < 60)
         {
            this.Player.y = 60;
            this.moveY = 0;
         }
         else if(this.Player.y > 350)
         {
            this.Player.y = 350;
            this.moveY = 0;
         }
      }
      
      public function rollPlaneBox() : *
      {
         if(this.cPBox)
         {
            return;
         }
         this.spawnPBox();
      }
      
      public function spawnPBox() : *
      {
         this.cPBox = new rdbox();
         this.cPBox.x = Math.random() * 700 + 25;
         this.cPBox.y = 800;
         this.cPBox.scaleX = this.cPBox.scaleY = 0.47;
         this.cPBox.inner.gift.gotoAndStop(Math.round(Math.random() * 2));
         this.cpLayer.addChild(this.cPBox);
      }
      
      public function getRotation(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         this.diffX = param3 - param1;
         this.diffY = param4 - param2;
         return Math.atan2(this.diffY,this.diffX) / Math.PI * 180;
      }
      
      public function getDistance(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         this.diffX = param3 - param1;
         this.diffY = param4 - param2;
         return Math.sqrt(this.diffX * this.diffX + this.diffY * this.diffY);
      }
      
      public function spawnRocketAt(param1:Number) : *
      {
         var _loc2_:* = new rocket();
         _loc2_.x = param1;
         _loc2_.y = 1500;
         this.rocketLayer.addChild(_loc2_);
         this.cRocketMc = _loc2_;
      }
      
      public function addSmoke(param1:Number, param2:Number) : *
      {
         var _loc3_:* = new rocket_smoke();
         _loc3_.x = param1;
         _loc3_.y = param2;
         _loc3_.scaleY = 0.1 + Math.random() * 0.2;
         _loc3_.scaleX = 0.1 + Math.random() * 0.2;
         _loc3_.alpha = 0.3 + Math.random() * 0.2;
         this.rocketLayer.addChild(_loc3_);
         this.smokeList.push({
            "mc":_loc3_,
            "rot":5 - Math.random() * 10
         });
      }
      
      public function restart(param1:*) : *
      {
         this.startGame();
      }
      
      public function startGame() : *
      {
         this.destroyAd();
         this.user.rounds = this.user.rounds + 1;
		 TheConnection.send("idkrly", "runda");
		 this.checkforachievement();
         //this.so.flush();
         this.gameover.gotoAndStop(1);
         this.plane.gotoAndPlay(2);
         while(this.cloudLayer.numChildren)
         {
            this.cloudLayer.removeChildAt(0);
            this.cloudArr = [];
         }
         while(this.bloodLayer.numChildren)
         {
            this.bloodLayer.removeChildAt(0);
         }
         while(this.boxLayer.numChildren)
         {
            this.boxLayer.removeChildAt(0);
            this.enemyArrs = [];
         }
         while(this.pcLayer.numChildren)
         {
            this.pcLayer.removeChildAt(0);
            this.pcArr = [];
         }
         this.myChannel.stop();
         this.planepoint_txt.text = "0";
         this.score_txt.text = "0";
		 this.canRestart = false;
         this.exScore_txt.text = "0";
         if(this.user.rounds > 599)
         {
            this.addAchievement("Addicted");
         }
		 this.score = 0;
         this.PPCollected = 0;
		 this.usedBefore = false;
		 this.sc_w.y = 510;
         this.exScore = 0;
         this.Player.visible = false;
	 }
        public function tradeDone()
	{
            //var _local_1:success_sound = new success_sound();
            //var _local_2:SoundChannel = _local_1.play();
            this.trade_done_ov.y = 240;
            this.trade_done_ov.x = (stage.stageWidth / 2);
            this.trade_done_ov.gotoAndPlay(1);
	 }

        public function getCoins(reason:String, amount:String)
        {
            this.TheConnection.send("unknown", reason, amount);
	  }

        public function gotCoins(c:Connection)
        {
            var c:Connection = c;
            c.addMessageHandler("done", function (m)
            {
                if (m.getString(0) == "coins")
                {
                    TheClient.payVault.refresh(this.LoadGame);
                    c.disconnect();
                }
                else
                {
                    if (m.getString(0) == "error")
                    {
                        alert("Error in getting coins");
                        c.disconnect();
                    };
                };
            });
	  }
      public function onPlayerDeath() : *
      {
		 this.gameover.visible = true;
         this.gameover.gotoAndPlay(2);
         this.dead = true;
         this.user.Die = this.user.Die + 1;
         this.user.CurrentXP = this.user.CurrentXP + this.CurrentXP_text;
         this.user.TotalXP = this.user.TotalXP + this.TotalXP_text;
         this.score = this.score + this.exScore;
		 trace("lets do");
		 var moneee:* = this.PPCollected.toString();
		 trace("FUCK UR FAMILLY DECOMPLIER");
		 this.getCoins("SinglePlayer", moneee);
		 TheConnection.send("idkrly", "maovo");
		 var curxp:* = this.CurrentXP_text.toString();
		 TheConnection.send("idkrly", "curxp", curxp);
		 var totalxp:* = this.TotalXP_text.toString();
		 TheConnection.send("idkrly", "totxp", totalxp);
		 this.showSC();
		 this.gameRestarted = false;
		 clearTimeout(this.parachuteTimeout);
         //clearTimeout(this.keepShieldTimer);
		 this.bloodLayer.visible = true;
		 this.savePos.data.cordX = this.Player.x;
         this.savePos.data.cordY = this.Player.y;
         this.savePos.flush();
         if(this.score < 200)
         {
            this.addAchievement("noob");
         }
         if(this.slowmotion)
         {
            this.addAchievement("SlowmotionFail");
         }
         if(this.user.Die > 299)
         {
            this.addAchievement("Damn");
         }
         if(this.score > 789 && this.score < 811)
         {
            this.addAchievement("DEAD");
         }
         //this.so.flush();
      }
      
      public function showHighscore() : *
      {
         var _loc1_:newhighscore = new newhighscore();
         var _loc2_:SoundChannel = _loc1_.play();
         this.gameover.highscore_tab.score_txt.text = " " + this.score;
         this.gameover.highscore_tab.visible = true;
         Tweener.addTween(this.gameover.highscore_tab,{
            "scaleX":0.6,
            "scaleY":0.6,
            "alpha":1,
            "time":0.3,
            "transition":"easeOutBack"
         });
      }
      
      public function hideHighscore(param1:*) : *
      {
         var event:* = param1;
         Tweener.addTween(this.gameover.highscore_tab,{
            "alpha":0,
            "scaleX":0.5,
            "scaleY":0.5,
            "time":0.7,
            "transition":"easeOutBack",
            "onComplete":function():*
            {
               gameover.highscore_tab.visible = false;
            }
         });
      }
        public function addAchievement(_arg_1:String){
            var _local_5:*;
            var _local_2:* = true;
            var _local_3:uint;
            while (_local_3 < this.user.achievement.length)
            {
                if (this.user.achievement[_local_3] == _arg_1)
                {
                    _local_2 = false;
                };
                _local_3++;
            };
            if (!_local_2)
            {
                return;
            };
            var _local_4:Object = {"id":"none"};
            for (_local_5 in this.achievement_data)
            {
                if (this.achievement_data[_local_5].id == _arg_1)
                {
                    _local_4 = this.achievement_data[_local_5];
                };
            };
            if (_local_4.id == "none")
            {
                trace("unknown achievement!");
                return;
            };
            this.user.achievement.push(_local_4.id);
            TheConnection.send("idkrly", "achii", (_local_4.id));
            this.showNewAchievement(_local_4);
		}
        public function showNewAchievement(_arg_1:Object){
            this.a_mc.gotoAndPlay(2);
            this.a_mc.ach.name_txt.text = _arg_1.desc;
            this.a_mc.ach.inners.gotoAndStop(_arg_1.id);
            this.a_mc.ach.coinsWin_txt.text = ((((_arg_1.coins < 0)) ? "-" : "+") + _arg_1.coins);
            var _local_2:* = (Math.random() * 69696969);
		    this.getCoins("AchCoins", _arg_1.coins);
			trace("JEBEM TI KURAC");
	  }
      
      public function gotoMenu(param1:*) : *
      {
         this.destroyAd();
         while(this.cloudLayer.numChildren)
         {
            this.cloudLayer.removeChildAt(0);
            this.cloudArr = [];
         }
         while(this.pcLayer.numChildren)
         {
            this.pcLayer.removeChildAt(0);
            this.pcArr = [];
         }
         while(this.bloodLayer.numChildren)
         {
            this.bloodLayer.removeChildAt(0);
         }
         while(this.rocketLayer.numChildren)
         {
            this.rocketLayer.removeChildAt(0);
            this.cRocketMc = null;
         }
         while(this.cpLayer.numChildren)
         {
            this.cpLayer.removeChildAt(0);
            this.cPBox = null;
         }
         this.myChannel.stop();
		 //loadHighscores();
         this.gameover.visible = false;
         this.gameover.gotoAndStop(0);
         stage.removeEventListener(Event.ENTER_FRAME,this.loop);
         gotoAndStop(2);
		 this.usedBefore = false;
		 TheClient.payVault.refresh(this.LoadGame);
         this.score = 0;
         this.bomb = 1;
      }
      
      public function boxHit(param1:Object) : *
      {
         param1.mc.inner.en_blood.visible = true;
         param1.mc.inner.en_blood.gotoAndStop(param1.mc.inner.currentFrame);
         param1.rot = param1.rot + (30 - Math.random() * 60);
         param1.swingX = 10 - Math.random() * 20;
         param1.swingY = 20 + Math.random() * 8;
      }
      
      public function newEnemy(param1:String) : *
      {
         var _loc2_:MovieClip = null;
         if(param1 == "box")
         {
            _loc2_ = new box1();
            _loc2_.x = -325 + 700 * Math.random();
            _loc2_.rotation = Math.random() * 360;
            _loc2_.scaleX = _loc2_.scaleY = 0.85;
            this.boxLayer.addChild(_loc2_);
            this.enemyArrs.push({
               "mc":_loc2_,
               "rot":2 - Math.random() * 4,
               "speed":Math.random() * 0.3 + 0.7,
               "swingX":0,
               "swingY":0,
               "soClose":false,
               "pastPlayer":false
            });
            _loc2_.inner.gotoAndStop(Math.round(Math.ceil(Math.random() * 15)));
         }
         else if(param1 == "rocket")
         {
            this.initRocketAt(Math.random() * 750);
         }
      }
      
      public function initRocketAt(param1:int) : *
      {
         this.cRocketX = param1;
         this.cRocketTime = 95;
      }
      
      public function enemySetup() : *
      {
         if(Math.random() > 0.086 || this.cRocketMc != null || this.cRocketTime > 0)
         {
            this.newEnemy("box");
         }
         else if(!this.adrenalina)
         {
            this.newEnemy("rocket");
         }
         if(Math.random() > 0.78)
         {
            this.spawnPlaneCoins();
         }
      }
      
      public function spawnPlaneCoins() : *
      {
         var _loc1_:* = new planepoint();
         _loc1_.y = 600;
         _loc1_.x = Math.random() * 750;
         this.pcLayer.addChild(_loc1_);
         this.pcArr.push({"mc":_loc1_});
      }
      
      public function key_pressed(param1:KeyboardEvent) : *
      {
         if(this.dead)
         {
            return;
         }
         if(param1.keyCode == Keyboard.RIGHT || param1.keyCode == Keyboard.D)
         {
            this.direction = 1;
            this.right = true;
         }
         if(param1.keyCode == Keyboard.LEFT || param1.keyCode == Keyboard.A)
         {
            this.direction = -1;
            this.left = true;
         }
         if(param1.keyCode == Keyboard.UP || param1.keyCode == Keyboard.W)
         {
            this.wingsuitControl(-1);
         }
         if(param1.keyCode == Keyboard.DOWN || param1.keyCode == Keyboard.S)
         {
            this.wingsuitControl(1);
         }
         if(param1.keyCode == Keyboard.M)
         {
            this.slowMotion();
         }
         if(param1.keyCode == Keyboard.P)
         {
            this.pauseGame();
         }
         if(param1.keyCode == Keyboard.N)
         {
            this.useAdrenalina();
         }
         if(param1.keyCode == Keyboard.SPACE)
         {
            this.bombwaves();
         }
      }
      
      public function keys_released(param1:KeyboardEvent) : *
      {
         if(this.dead)
         {
            return;
         }
         if(param1.keyCode == Keyboard.RIGHT || param1.keyCode == Keyboard.D)
         {
            if(!this.left)
            {
               this.direction = 0;
            }
            this.right = false;
         }
         if(param1.keyCode == Keyboard.LEFT || param1.keyCode == Keyboard.A)
         {
            if(!this.right)
            {
               this.direction = 0;
            }
            this.left = false;
         }
         if(param1.keyCode == Keyboard.UP || param1.keyCode == Keyboard.DOWN || param1.keyCode == Keyboard.W || param1.keyCode == Keyboard.S)
         {
            this.wingsuitControl(0);
         }
      }
      
      public function GameOver(param1:Message) : *
      {
         //this.showAd("image");
         trace("game over");
         this.GameOverPop.scaleX = 0.75;
         this.GameOverPop.scaleY = 0.75;
         this.GameOverPop.alpha = 0;
         this.GameOverPop.visible = true;
         Tweener.addTween(this.GameOverPop,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1,
            "time":0.5
         });
         var _loc2_:Array = [this.GameOverPop.rank1,this.GameOverPop.rank2,this.GameOverPop.rank3];
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_ / 2].name_txt.text = param1.getString(_loc3_);
            _loc2_[_loc3_ / 2].score_txt.text = param1.getInt(_loc3_ + 1).toString();
            _loc3_ = _loc3_ + 2;
         }
         var _loc4_:* = _loc3_ / 2;
         while(_loc4_ < 3)
         {
            _loc2_[_loc4_].visible = false;
            _loc4_++;
         }
         while(this.boxLayer.numChildren)
         {
            this.boxLayer.removeChildAt(0);
         }
         while(this.bloodLayer.numChildren)
         {
            this.bloodLayer.removeChildAt(0);
         }
         while(this.cloudLayer.numChildren)
         {
            this.cloudLayer.removeChildAt(0);
            //this.mp_cloudArr = [];
         }
      }
      
      public function placeBox(param1:Message) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:box1 = null;
         if(this.startedPlaying)
         {
            _loc2_ = param1.getNumber(2);
            _loc3_ = new box1();
            _loc3_.x = param1.getInt(0);
            _loc3_.rotation = param1.getInt(4);
            _loc3_.scaleX = _loc3_.scaleY = 0.8;
            this.boxLayer.addChild(_loc3_);
            this.enemyArr.push({
               "mc":_loc3_,
               "rot":param1.getNumber(1),
               "speed":_loc2_,
               "swingX":0,
               "swingY":0
            });
            _loc3_.inner.gotoAndStop(param1.getInt(3));
         }
	  
	  
	  }
      
      public function wingsuitControl(param1:int) : *
      {
         if(this.myWingsuit == 1)
         {
            this.moveYspeed = 0.7;
            this.moveYdir = param1;
         }
         else if(this.myWingsuit == 2)
         {
            this.moveYspeed = 1.35;
            this.moveYdir = param1;
         }
		 
	  }
      
      public function frame6() : *
      {
         this.enemyArrs = [];
         this.PPCollected = 0;
         this.cloudArr = [];
         this.smokeList = [];
         this.pcArr = [];
         this.alarmSound = new alarmsound();
         this.TotalXP_text = 0;
         this.NextLevel = 2;
         this.CurrentXP_text = 0;
         this.diffX = 0;
         this.diffY = 0;
         this.myMagnet = 0;
         this.bomb = 0;
         this.bomb_used = 0;
         this.obstaclesDestroyed = 0;
         this.destroy_s = new explode();
         this.parachuteUTimes = 0;
         this.usedAdrenalina = 0;
         this.adrenalineTimer = 0;
         this.wosh = new t_pBox();
         this.ccount = 0;
         this.count = 0;
         this.myplane = "normal";
         this.myWingsuit = 0;
         stage.focus = stage;
		}
      
      public function frame7() : *
      {
		  
		}
		
		public function openInventory(e:Event)
        {
           this.TheClient.payVault.refresh(plantINV);
		}
		
		public function openRooms(e:Event)
        {
           TheClient.multiplayer.listRooms("GoRoom", null, 25, 0, loadedRooms, null);
										   Tweener.addTween(Multi_tab, 
			                               {
				                              "x": 378.85,
				                              "y": 183.9,
				                              "time": 0.2
			                                });
											
											Multi_tab.close_btn.addEventListener(MouseEvent.CLICK, function()
																				 {
																					 Tweener.addTween(Multi_tab, 
			                                                                         {
				                                                                         "x": 1143.6,
				                                                                         "x": 256.65,
				                                                                         "time": 0.2
			                                                                          });
																				 })
		
		}

        public function openGiftcodesm(e)
        {
            trace("jebo mater svoju");
			this.giftcodes_mc = new giftcodes(this.TheClient);
            this.giftcodes_mc.x = (stage.stageWidth / 2);
            this.giftcodes_mc.y = (stage.stageHeight / 2);
            addChild(this.giftcodes_mc);
			trace("jebo mater");
		}
        public function errorHandler(_arg_1:*){
            trace("got", _arg_1);
		}

        public function uzmiBox(m:Message)
        {
		      if (this.opened == "m-pack")
			  trace("ma daj mi");
                    {
                        trace("unpacked memepack");
                        if ((((((m.getString(0) == "trollface")) || ((m.getString(0) == "really")))) || ((m.getString(0) == "foreveralone"))))
                        {
                            this.TheClient.payVault.refresh(function (){
                                //setup();
                                trace("payVault refreshed!");
                            }, this.errorHandler);
                            return;
                        };
						}
		/*}

        public function addChar(t:String):void
        {
            var obj:* = new Player();
            obj.x = -263.05;
            obj.y = 290;
            this.ficl.addChild(obj);
            this.p1name = t.split(";")[0];
            this.enemycharz = obj;
            this.enemyName = this.p1name;
            var p1head:* = t.split(";")[2];
            var p1hand:* = t.split(";")[4];
            var p1skin:* = t.split(";")[5];
            var p1eyes:* = t.split(";")[6];
            var p1mouth:* = t.split(";")[7];
            var p1glow:* = t.split(";")[12];
            //obj.charInfo.text = this.p1name;
            obj.myChar.headItem.gotoAndStop(p1head);
            trace("no");*/
		}

        public function getGC(e)
        {
            var gcx:*;
            var randomNumber:Number;
            gcx = this.gc.text;
            trace(gcx);
            this.blockerrrr.visible = true;
            randomNumber = Math.floor((Math.random() * 2516161));
            trace(randomNumber);
            this.TheClient.multiplayer.createJoinRoom(("getGc_" + randomNumber), "Giftcodes", false, {}, {giftCode:gcx}, this.gcExterminate, null);
			trace("STA RADITE TO BRE");
			refreshAll();
		}

        public function gcExterminate(connection:Connection)
        {
            var connection:Connection = connection;
            connection.addMessageHandler("giftcodes", function (m)
            {
                if (m.getString(0) != "error")
                {
                    blockerrrr.visible = false;
                    refreshIt();
                }
                else
                {
                    blockerrrr.visible = false;
                    alert("Wrong giftcode");
                };
            });
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		}// end function		
		
		 public function buyItem(param1:String, param2:uint)
        {
            this.TheClient.payVault.buy([{itemKey:param1}], true, this.buyItemCallback, this.buyItemFail);
            return;
        }// end function

        public function buyItemCallback()
        {
			this.myCoins = this.TheClient.payVault.coins;
            this.myItems = this.TheClient.payVault.items;
			trace("kurcina3")
            return;
        }// end function

        public function buyItemFail(param1:PlayerIOError)
        {
            this.alert("Couldn't buy item: " + param1.message);
            return;
		
		/*}
        public function unpackedSuccessful(itemName:*){
            var uPS:* = undefined;
            uPS = new unpacked_w();
            uPS.x = 375;
            uPS.y = 115;
            uPS.inner.item_d.gotoAndStop(itemName);
            this.pLayer.addChild(uPS);
            this.myclient.payVault.refresh(function (){
                listItems();
                trace("payVault refreshed!");
            }, this.errorHandler);*/
		
		}
        public function unpacked(_arg_1:*):void{
            this.unpack_mc = new unpackMc();
            this.unpack_mc.x = 375;
            this.unpack_mc.y = 250;
            addChild(this.unpack_mc);
            this.unpack_mc.gotoAndStop(_arg_1);
		}
        public function openAW(_arg_1:MouseEvent){
            var _local_2:* = new ach_w();
            _local_2.x = 375;
            _local_2.y = 250;
            _local_2.scaleX = (_local_2.scaleY = 1.05);
            addChild(_local_2);
            _local_2.init(this.user.achievement, this.achievement_data);
		
		
		}
		
		public function openChoose(_arg_1:MouseEvent)
        {
           this.chooseMc = new shop_sel_w();
		   this.chooseMc.x = 375;
            this.chooseMc.y = 250;
            addChild(this.chooseMc);
			chooseMc.inner.close_btn.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("Kurcina Mrtva debela removed");
											   removeChild(chooseMc);
										   })
			
			chooseMc.inner.shop_btn.addEventListener(MouseEvent.CLICK, function () {
													this.coins_n_shop = new coins_n_shop_mc();
            removeChild(chooseMc);
			this.coins_n_shop.x = stage.stageWidth / 2;
            this.coins_n_shop.y = stage.stageHeight / 2;
            addChild(this.coins_n_shop);
            this.coins_n_shop.setup({coins:this.MyCoins});
            return; 
													 })
			
			
			chooseMc.inner.prem_btn.addEventListener(MouseEvent.CLICK, function () {
				
			removeChild(chooseMc);
			trace("sve ti jebem");
            this.prem_shop_w = new Prem_shopMc();
            this.prem_shop_w.x = 375;
            this.prem_shop_w.y = 250;
            addChild(this.prem_shop_w)
			alert("If you are intrested to buy stuffs from Premium Shop contact developer");
													
													
													
		 })
        }
		
		public function refreshShit() {
			this.TheClient.payVault.refresh(function () {
	 		return TheClient.payVault.items;
				})
		 }// end function
		public function refreshitems()
            {
                this.TheClient.payVault.refresh(this.payVaultLoaded);
            }
			 public function payVaultLoaded()
        {
            this.myCoins = this.TheClient.payVault.coins;
            this.myItems = this.TheClient.payVault.items;
			trace("dosta vise");
		}
		public function refreshIt() {
			this.TheClient.payVault.refresh(function () {
				this.myItems = TheClient.payVault.items
				trace("ko te zorom ljubii");
				this.myCoins = TheClient.payVault.coins;

				if (currentFrame == 2) {
					coins_txt.text = this.myCoins;
					this.recpot = [];
					this.recOpend = false;
					
				}
				return;
			})
            }
        public function loadLevelName(){
            if (currentFrame == 2)
            {
                if (this.user.CurrentLevel == 1)
                {
                    this.levelname_txt.text = ((("N" + "o") + "o") + "b");
                    this.NextLevel = 2;
                };
                if (this.user.CurrentLevel == 2)
                {
                    this.levelname_txt.text = ((((("B" + "e") + "g") + "in") + "ne") + "r");
                    this.NextLevel = 3;
                };
                if (this.user.CurrentLevel == 3)
                {
                    this.levelname_txt.text = ((("Fr" + "es") + "hm") + "an");
                    this.NextLevel = 4;
                };
                if (this.user.CurrentLevel == 4)
                {
                    this.levelname_txt.text = ((("Re" + "cr") + "u") + "it");
                    this.NextLevel = 5;
                };
                if (this.user.CurrentLevel == 5)
                {
                    this.levelname_txt.text = (("Ju" + "mp") + "er");
                    this.NextLevel = 6;
                };
                if (this.user.CurrentLevel == 6)
                {
                    this.levelname_txt.text = (((("Sk" + "y") + "di") + "ve") + "r");
                    this.NextLevel = 7;
                };
                if (this.user.CurrentLevel == 7)
                {
                    this.levelname_txt.text = ((("Sk" + "il") + "le") + "d");
                    this.NextLevel = 8;
                };
                if (this.user.CurrentLevel == 8)
                {
                    this.levelname_txt.text = ((("Sk" + "il") + "le") + "d");
                    this.NextLevel = 9;
                };
                if (this.user.CurrentLevel == 9)
                {
                    this.levelname_txt.text = (("P" + "r") + "o");
                    this.NextLevel = 10;
                };
                if (this.user.CurrentLevel == 10)
                {
                    this.levelname_txt.text = "Addict";
                    this.NextLevel = 11;
                };
                if (this.user.CurrentLevel == 11)
                {
                    this.levelname_txt.text = "Master";
                    this.NextLevel = 12;
                };
                if (this.user.CurrentLevel == 12)
                {
                    this.levelname_txt.text = "Expert";
                    this.NextLevel = 13;
                };
                if (this.user.CurrentLevel == 13)
                {
                    this.levelname_txt.text = "Rockstar";
                    this.NextLevel = 14;
                };
                if (this.user.CurrentLevel == 14)
                {
                    this.levelname_txt.text = "Champion";
                    this.NextLevel = 15;
                };
                if (this.user.CurrentLevel == 15)
                {
                    this.levelname_txt.text = "King";
                    this.NextLevel = 16;
                };
                if (this.user.CurrentLevel == 16)
                {
                    this.levelname_txt.text = "Angel";
                    this.NextLevel = 17;
                };
                if (this.user.CurrentLevel == 17)
                {
                    this.levelname_txt.text = "Pwner";
                    this.NextLevel = 18;
                };
                if (this.user.CurrentLevel == 18)
                {
                    this.levelname_txt.text = "Famous";
                    this.NextLevel = 19;
                };
                if (this.user.CurrentLevel == 19)
                {
                    this.levelname_txt.text = "Almost God";
                    this.NextLevel = 20;
                };
                if (this.user.CurrentLevel == 20)
                {
                    this.levelname_txt.text = "God";
                };
            }
            else
            {
                if (this.user.CurrentLevel == 1)
                {
                    this.NextLevel = 2;
                };
                if (this.user.CurrentLevel == 2)
                {
                    this.NextLevel = 3;
                };
                if (this.user.CurrentLevel == 3)
                {
                    this.NextLevel = 4;
                };
                if (this.user.CurrentLevel == 4)
                {
                    this.NextLevel = 5;
                };
                if (this.user.CurrentLevel == 5)
                {
                    this.NextLevel = 6;
                };
                if (this.user.CurrentLevel == 6)
                {
                    this.NextLevel = 7;
                };
                if (this.user.CurrentLevel == 7)
                {
                    this.NextLevel = 8;
                };
                if (this.user.CurrentLevel == 8)
                {
                    this.NextLevel = 9;
                };
                if (this.user.CurrentLevel == 9)
                {
                    this.NextLevel = 10;
                };
                if (this.user.CurrentLevel == 10)
                {
                    this.NextLevel = 11;
                };
                if (this.user.CurrentLevel == 11)
                {
                    this.NextLevel = 12;
                };
                if (this.user.CurrentLevel == 12)
                {
                    this.NextLevel = 13;
                };
                if (this.user.CurrentLevel == 13)
                {
                    this.NextLevel = 14;
                };
                if (this.user.CurrentLevel == 14)
                {
                    this.NextLevel = 15;
                };
                if (this.user.CurrentLevel == 15)
                {
                    this.NextLevel = 16;
                };
                if (this.user.CurrentLevel == 16)
                {
                    this.NextLevel = 17;
                };
                if (this.user.CurrentLevel == 17)
                {
                    this.NextLevel = 18;
                };
                if (this.user.CurrentLevel == 18)
                {
                    this.NextLevel = 19;
                };
                if (this.user.CurrentLevel == 19)
                {
                    this.NextLevel = 20;
                };
            };



}

		
		public function plantINV()
        {
            this.inv = new items_mc();
            this.inv.x = 374;
            this.inv.y = 266.5;
            addChild(this.inv);
			if(this.TheClient.payVault.has("Sunset"))
			{
				this.inv.sun.visible = true;
			}
            this.inv.setup();
        /*}
        public function openPremShop(_arg_1:MouseEvent){
            removeChild(this.chooseMc);
			trace("sve ti jebem");
            this.prem_shop_w = new Prem_shopMc();
            this.prem_shop_w.x = 375;
            this.prem_shop_w.y = 250;
            addChild(this.prem_shop_w);*/
		
	/*}
		
		public function LoadTop10()
		{
			this.top = new top10();
			addChild(top);
			top.x = -377.05;
			top.y = 256.9;
			Tweener.addTween(top, 
			{
			   "x": 377.4,
			   "x": 257.55,
			   "time": 0.2
		    });
			top.close_btn.addEventListener(MouseEvent.CLICK,function()
										   {
											   trace("top10 removed");
											   removeChild(top);
										   })
			trace("top10 Loaded");
		
		
		

		*/		
		}

        public function goMultiplayer(event:MouseEvent):void
        {
            this.matchMake();
		}

        public function matchMake()
        {
			this.pTab.overlay.visible = true;
            TheClient.multiplayer.createJoinRoom(("matchmake_"), "matchmaking", true, {}, {type:"fishzone"}, this.joinedRoom, this.error);
        }

        public function joinedRoom(conn:Connection):void
        {
            conn.addDisconnectHandler(this.logOut);
            conn.addMessageHandler("*", this.listenMsg);
        }

        public function logOut()
        {
            removeChild(pTab);
        }

        public function error(event:PlayerIOError):void
        {
            trace(event.message);
		}

        public function joinGame(id:String, type:String):void
        {
                this.typetomake = type;
				if (type = "fishzone")
            {
				gotoAndStop(7);   
				}
		}

        public function listenMsg(m:Message):void
        {
            trace(m);
			if (m.type == "ufmogo")
            {
				trace("kurcina moja znas");
				this.pTab.overlay.visible = false;
			}
			if (m.type == "gameFound")
            {
                this.pTab.overlay.visible = false;
                joinGame(m.getString(0), m.getString(1));
                removeChild(pTab);
            };
		}

        public function unlockMyChest()
        {
            this.TheConnection.send("unpack-meme", ".");
		}

        public function idkwhattonameit()
        {
            this.TheConnection.send("idkrly");
		
		}

        public function unlockBoxer()
        {
            this.TheConnection.send("unpack-boxer", ".");
		
		}
		
		public function loadedRooms(number:Array):void
		{
			if (MovieClip(root).TheClient.payVault.has("vip"))
            {
				Multi_tab.hasvip.visible = true;
			}
			if (MovieClip(root).TheClient.payVault.has("TradingTicket"))
			{
				Multi_tab.hastt.visible = true;
			}
			Multi_tab.a_online.text = "0";
			Multi_tab.b_online.text = "0";
			Multi_tab.c_online.text = "0";
			Multi_tab.d_online.text = "0";
			Multi_tab.e_online.text = "0";
			
			Multi_tab.a_btn.tabEnabled = false;
			Multi_tab.b_btn.tabEnabled = false;
			Multi_tab.c_btn.tabEnabled = false;
			Multi_tab.d_btn.tabEnabled = false;
			Multi_tab.e_btn.tabEnabled = false;
			trace("Loading Rooms");
			var users = 0;
			while (users < number.length) 
			{
				if (number[users].id == "a_lobby") 
				{
					if (number[users].onlineUsers < 25) 
						{
						trace("Null?");
						Multi_tab.f_btn.visible = true;
						Multi_tab.f_full.visible = false;
						Multi_tab.a_online.text = number[users].onlineUsers;
					} 
					else 
					{
						Multi_tab.a_btn.visible = false;
						Multi_tab.a_full.visible = true;
						Multi_tab.a_online.text = number[users].onlineUsers;
					}
				}
				if (number[users].id == "b_lobby") 
				{
					if (number[users].onlineUsers < 25) 
					{
						trace("Null?");
						Multi_tab.f_btn.visible = true;
						Multi_tab.f_full.visible = false;
						Multi_tab.b_online.text = number[users].onlineUsers;
					} 
					else 
					{
						Multi_tab.b_full.visible = true;
						Multi_tab.b_btn.visible = false;
						Multi_tab.b_online.text = number[users].onlineUsers;
					}
				}
				if (number[users].id == "c_lobby") 
				{
					if (number[users].onlineUsers < 25) 
					{
						trace("Null?");
						Multi_tab.f_btn.visible = true;
						Multi_tab.f_full.visible = false;
						Multi_tab.c_online.text = number[users].onlineUsers;
					} 
					else 
					{
						Multi_tab.c_full.visible = true;
						Multi_tab.c_btn.visible = false;
						Multi_tab.c_online.text = number[users].onlineUsers;
					}
				}
				if (number[users].id == "d_lobby") 
				{
					if (number[users].onlineUsers < 25) 
					{
						trace("Null?");
						Multi_tab.f_btn.visible = true;
						Multi_tab.f_full.visible = false;
						Multi_tab.d_online.text = number[users].onlineUsers;
					} 
					else 
					{
						Multi_tab.d_btn.visible = false;
						Multi_tab.d_full.visible = true;
						Multi_tab.d_online.text = number[users].onlineUsers;
					}
				}
				if (number[users].id == "e_lobby") 
				{
					if (number[users].onlineUsers < 25) 
					{
						trace("Null?");
						Multi_tab.f_btn.visible = true;
						Multi_tab.f_full.visible = false;
						Multi_tab.e_online.text = number[users].onlineUsers;
					} 
					else 
					{
						Multi_tab.e_btn.visible = false;
						Multi_tab.e_full.visible = true;
						Multi_tab.e_online.text = number[users].onlineUsers;
					}
				}
				users = users + 1;
			}
			this.addListeners();
			return;
		}

		public function addListeners() 
		{
			var users;
			Multi_tab.a_btn.addEventListener(MouseEvent.CLICK, function () 
			{
				goroom("a_lobby");
				Multi_tab.connecting_ov.visible = true;
				trace("Going in A Lobby")
				return;
			})
			
			Multi_tab.b_btn.addEventListener(MouseEvent.CLICK, function () 
			{
				goroom("b_lobby");
				Multi_tab.connecting_ov.visible = true;
				trace("Going in B Lobby")
				return;
			})
			
			Multi_tab.c_btn.addEventListener(MouseEvent.CLICK, function () 
			{
				goroom("c_lobby");
				Multi_tab.connecting_ov.visible = true;
				trace("Going in C Lobby")
				return;
			})
			
			Multi_tab.d_btn.addEventListener(MouseEvent.CLICK, function () 
			{
				if (MovieClip(root).TheClient.payVault.has("team"))
                {
				goroom("d_lobby");
				Multi_tab.connecting_ov.visible = true;
				trace("Going in D Lobby")
				return;
				};
				if (!MovieClip(root).TheClient.payVault.has("team"))
            {
                MovieClip(root).alert("You are not part of STAFF!");
            }
            else
            {
                Multi_tab.connecting_ov.visible = true;
                goroom("d_lobby");
				};
			})
			
			Multi_tab.e_btn.addEventListener(MouseEvent.CLICK, function () 
			{
				if (MovieClip(root).TheClient.payVault.has("team"))
                {
				goroom("e_lobby");
				Multi_tab.connecting_ov.visible = true;
				trace("Going in E Lobby")
				return;
				};
				if (!MovieClip(root).TheClient.payVault.has("vip"))
            {
                MovieClip(root).alert("You are not VIP!");
            }
            else
            {
                Multi_tab.connecting_ov.visible = true;
                goroom("e_lobby");
				};		
			})
		}

		private function goroom(room: String): void 
		{
			if (cango == true) 
			{
				cango = false;
				myroom = room;
				TheClient.multiplayer.createJoinRoom(
					room,
					"GoRoom",
					true,
					{},
					{
						fbname: fbname,
						fbuid: fbuid,
						dbskin: user.skins,
						dbusername: fbname,
						dbbadge: user.badge
					}, //User join data
					golobbynow,
					handleError
				);
				return;
			}
		}
		
		private function golobbynow(connection: Connection): void 
		{
			lobbyconnection = connection;
			gotoAndStop(3);
			this.mute_btn.visible = false;
			this.snow_btn.visible = false;
			this.q_btn.visible = false;
			offers_w.gotoAndStop(1);
			giftcodes_btn.addEventListener(MouseEvent.CLICK, this.openGiftcodesm);
			offer_btn.addEventListener(MouseEvent.CLICK, offeritem);
			var profileurl = "https://graph.facebook.com/" + fbuid + "/picture";
			var pic = new Loader();
			pic.load(new URLRequest(profileurl));
			pic.x = -24;
			pic.y = -24;
			stage.addEventListener(MouseEvent.RIGHT_CLICK, function(e:MouseEvent):void
								   {
									//   alert("Right click is disabled");
								   });
			if(myroom == "a_lobby")
			{
				room_txt.text = "sector: A";
				fbname_txt.text = fbname;
				ono_moje.ins.addChild(pic);
				
				
			}
			else if(myroom == "b_lobby")
			{
				room_txt.text = "sector: B";
				fbname_txt.text = fbname;
				ono_moje.ins.addChild(pic);
			}
			else if(myroom == "c_lobby")
			{
				room_txt.text = "sector: C";
				fbname_txt.text = fbname;
				ono_moje.ins.addChild(pic);
			}
			else if(myroom == "d_lobby")
			{
				room_txt.text = "TEAM ROOM";
				fbname_txt.text = fbname;
				ono_moje.ins.addChild(pic);
			}
			else if(myroom == "e_lobby")
			{
				room_txt.text = "VIP ROOM";
				fbname_txt.text = fbname;
				ono_moje.ins.addChild(pic);
			}
			DisplayTextField.multiline = true;
			//usersList.setStyle("upSkin", new MovieClip());
			usersList.tabEnabled = false;
			//usersContainer = new MovieClip();
			refreshAll();
			//usersList.scroll_cont.pcont.source = usersContainer;
			ChatTextField.restrict = "^<>";
			DisplayTextField.restrict = "^<>";
			offer_btn.tabEnabled = false;
			lobby_mc.leave_btn.tabEnabled = false;				
			//giftcodes_btn.addEventListener(MouseEvent.CLICK, this.openGiftcodesm);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, KeyisDown);
			lobby_mc.leave_btn.addEventListener(MouseEvent.CLICK, leave_lobby);
			lobby_mc.leave_btn.tabEnabled=false
			connection.addMessageHandler("chatMsg", function (m: Message, ChatMessage: String) 
			{
				//if(inTrade == false)
				//{
					trace(ChatMessage);
				    DisplayTextField.htmlText += ChatMessage + "\n";
				    DisplayTextField.scrollV = DisplayTextField.maxScrollV;
				    DisplayTextField.condenseWhite = true;
			})
			connection.addMessageHandler("UserJoined", function (m: Message, userid: String, count: int, users: String, Skins: String, Badge: String, allfbid: String) {
				updateUsers(users, Skins, Badge, allfbid);
			});
            connection.addMessageHandler("errorinscratch", function (m)
            {
                alert(m.getString(0));
			});
            connection.addMessageHandler("done", function (m)
            {
					trace("refreshed");
					refreshitems();
										 })
			connection.addMessageHandler("clearChat",function(m:Message, Who:String)
										 {
											 DisplayTextField.text = "";
											 alert("Chat Cleared by: " + Who);
										 })
			connection.addMessageHandler("uwereMuted",function(m:Message, aMsg:String, myID:String)
										 {
											if(myID == "fb" + fbuid)
											{
											   alert(aMsg); 
											}
										 })
			connection.addMessageHandler("playerMuted",function(m:Message, myID:String, aMsg:String)
										 {
											if(myID == "fb" + fbuid)
											{
		
		                                       alert(aMsg);
											}
										 })
			connection.addMessageHandler("playerUnmuted",function(m:Message, myID:String, aMsg:String)
										 {
											if(myID == "fb" + fbuid)
											{
												alert(aMsg);
											}				 
										 })
			connection.addMessageHandler("uGotItem",function(m:Message, Item:String, myID:String)
										 {
											 if(myID == "fb" + fbuid)
											 {
												 alert("You Recieved " + Item + " for being in the lobby for 2 minute's!");
											 }
										 })
			connection.addMessageHandler("changeitem", function(m:Message, number:int, item:String){
				trace("Recived a message with the type hello from the server");
				offers_w.itemUpdate(number,item)
            })
			connection.addMessageHandler("gotpartner", function(m:Message, hisNAME:String){
				trace(m,hisNAME);	
				offers_w.traderFound(hisNAME);
				
				
			})
			connection.addMessageHandler("waiting_deal", function(m:Message){
				removeChild(ctr_w);
				tradeDone();
			})
			connection.addMessageHandler("trade_done", function(m:Message){
				refreshIt();
				refreshShit();
				offer_btn.visible = true
				lobby_mc.visible = true;
            return;
			})
			connection.addMessageHandler("rejected", function(m:Message){
			 ctr_w.rejected();
			})
			connection.addMessageHandler("trade_locked", function(m:Message, whoishe:String){ 
			 offers_w.lockOffer();
			 trace(whoishe + "ALO BRE");
			   offers_w.trade_actions.unlock_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void
												 {
														 offers_w.trade_actions.lockedov.visible = false;
														 offers_w.trade_actions.yes_btn.visible = false;
														 offers_w.trade_actions.unlock_btn.visible = false;
														 lobbyconnection.send("iunlock", whoishe); 
														 trace("sent");
												  
										 });
	        connection.addMessageHandler("heunlock", function(m:Message){
											 trace("dobio sam kurac");
												 ctr_w.waiting.visible = false;
												 ctr_w.lockov.visible = false;
												 ctr_w.ok_btn.visible = true;
											 })
			})
			connection.addMessageHandler("partner_left", function(m:Message){
			 offers_w.partnerDisconnected();
			})
			connection.addMessageHandler("tooslow", function(m:Message){
				ctr_w.cls();
				alert("Someone was faster!");
				})
			connection.addMessageHandler("UpdateOffers", function(m:Message, user:String, count:int, offers:String){
				trace("Player with the userid", user, "just joined the room");
                 updateOffers(offers);
				 trace("hi offers");
				removeOffer(user);
										 
			})
			connection.addMessageHandler("UserLeft", function (m: Message, userid: String, count: int, users: String, Skins: String, Badge: String, allfbid: String) {
				updateUsers(users, Skins, Badge, allfbid);
			})
			connection.addMessageHandler("*", handleMessages)	
		}
		
		public function closeItNicely()
		{
			trace("yooo");
			offer_btn.visible = true;
		}
		public function offeritem(arg1:*):*
        {
			 removeEventListener(Event.ENTER_FRAME, this.scrollloopoffer);  
			offer_btn.visible = false;
           this.TheClient.payVault.refresh(this.exterminateoffer);
        }
		public function offerselected(param1:String, param2:String){
			trace(param2)
			trace(param1)
			 if (tradeBlacklist.indexOf(param2) != -1)
                {
                    alert("That item is blacklisted!");
					lobby_mc.visible = true
						offer_btn.visible = true
                    return;
                }
				else
				{
		    offers_w.gotoAndStop(2);
			offers_w.trade_actions.gotoAndStop(1);
			this.itemoffer = param2;
			offers_w.item_mc.gotoAndStop(param2);
			lobbyconnection.send("ChangeOffer", param2);
			offers_w.close_offer_btn.addEventListener(MouseEvent.CLICK,f);
               
              function f(e:Event){
               	lobbyconnection.send("ChangeOffer", "nooffer");
				  offer_btn.visible = true
				   
			offers_w.trade_actions.gotoAndStop(1);
			offers_w.item_mc.gotoAndStop(1);
				  offers_w.gotoAndStop(1);
               }
		   }
		}
		public function exterminateoffer():*
        {
			
			var noob = new items_table();
            addChild(noob);
			noob.x = 419.95;
			noob.y = 306;
            noob.setup(this.TheClient.payVault.items, this.offerselected, []);
			noob.close_btn.addEventListener(MouseEvent.CLICK,f);
               
              function f(e:Event){
				  offer_btn.visible = true
                  removeChild(noob);
               }
            return;
        }
		public function LoadItems()
		{
			trace("Hello World!");
			var offer = new items_table();
			addChild(offer);
			offer.x = 419.95;
			offer.y = 306;
			//offer.setup(TheClient.payVault.items, offerItem, 1);
		}
		
		private function leave_lobby(e: MouseEvent): void 
		{
			TheClient.payVault.refresh(this.LoadGame);
			cango = true;
			canopen = true;
			this.giftTo = "";
			//this.myChannel1.stop();
			loadHighscores();	
			lobbyconnection.disconnect();
		}
		
		public function updateSkin()
		{
			trace("Hey Sexy ;)");       
		}
		
		private function updateUsers(_users:String, _skins:String, _badge:String, _fbid:String):void
		{
			var users:Array = _users.split("~");
			var skins:Array = _skins.split("~");
			var badge:Array = _badge.split("~");
			var myid:Array = _fbid.split("~");
			trace("Tracing users:" + _users);
			//Remove the last item, is empty
			users.pop();
			skins.pop();
			badge.pop();
			myid.pop();
			
			
			//Remove all skins from the usersContainer
			while(usersList.scroll_cont.pcont.numChildren > 0)
				{
						usersList.scroll_cont.pcont.removeChildAt(0);
				}
			for(var i in users)
			{
				var scrolling = false
				//var user = new Skinss();
				//user.name = "user" + i;
				var user:Skinss = new Skinss();
				trace(badge[i]);
				user.gotoAndStop(String(skins[i]));
				user.badges.gotoAndStop(String(badge[i]));
				user.fbname.text = users[i];
				user.fbid.text = String(myid[i]);
				user.tabEnabled = false;
				//allusers = String(users);
				user.addEventListener(MouseEvent.CLICK, lel);
				user.tabEnabled=false
				usersList.scroll_cont.pcont.addChild(user);
			    user.y = i * (user.height);
				this.orgY = usersList.scroll_cont.pcont.y;
				//user.y = usersList.scroll_cont.pcont.source.numChildren * user.height + i* 1;
				//usersList.scroll_cont.pcont.addChild(user);
				//usersContainer.addChild(user);
				//usersList.scroll_cont.pcont.update();
				i++
				if (this.usersList.scroll_cont.height > this.usersList.bg.height)
            {
				trace("too hugh")
                if (!scrolling)
                {
                    addEventListener(Event.ENTER_FRAME, this.scrollloop, false, 0, true);
                }
                scrolling = true;
            }
            else
            {
                if (scrolling)
                {
                    removeEventListener(Event.ENTER_FRAME, this.scrollloop);
                }
                scrolling = false;
			}
			}
		}
		
        public function scrollloop(event:Event)
        {
            if (mouseY < 82) 
            {
			
                 this.usersList.scroll_cont.pcont.y =  this.usersList.scroll_cont.pcont.y + 8;
            }
             else if (mouseY > 350)
            {
				
                this.usersList.scroll_cont.pcont.y = this.usersList.scroll_cont.pcont.y - 8;
				
            }
             if (this.usersList.scroll_cont.pcont.y > 0)
            {
                this.usersList.scroll_cont.pcont.y = 0;
            }
			


            if (this.usersList.scroll_cont.pcont.y < -this.usersList.scroll_cont.height + this.bg.height - 197)
            {
				
                this.usersList.scroll_cont.pcont.y = -this.usersList.scroll_cont.height + this.bg.height - 197;
            }
            return;
        }// end function

		 public function scroll_loop_players(arg1:flash.events.Event):*
        {
            if (mouseY < 80) 
            {
                this.usersList.scroll_cont.pcont.y = this.usersList.scroll_cont.pcont.y + 8;
            }
            else if (mouseY > 350) 
            {
                this.usersList.scroll_cont.pcont.y = this.usersList.scroll_cont.pcont.y - 8;
            }
            if (this.usersList.scroll_cont.pcont.y > this.orgY) 
            {
                this.usersList.scroll_cont.pcont.y = this.orgY;
            }
            if (this.usersList.scroll_cont.pcont.y < this.orgY - this.usersList.scroll_cont.pcont.height + 258) 
            {
                this.usersList.scroll_cont.pcont.y = this.orgY - this.usersList.scroll_cont.pcont.height + 258;
            }
            return;
		
		}
		
		public function lel(e:MouseEvent):void
		{
				myclick = String(e.currentTarget.fbid.text);
				ChatTextField.text = "/pm;fb" + String(e.currentTarget.fbid.text) + ";";
				if(myclick != "fb" + fbuid)
				{
					lobbyconnection.send("openacc", myclick);
				}
				else
				{
					alert("Cant Click Yourself :P");
			}
		}
		
		public function refreshAll()
		{
			this.TheClient.payVault.refresh();
			myItems = TheClient.payVault.items;
			myCoins = TheClient.payVault.coins;
			
			if(currentFrame == 3 && more_options.currentFrame == 2)
			{
				more_options.coins_txt.text = myCoins;
				//giftcodes_btn.addEventListener(MouseEvent.CLICK, this.openGiftcodesm);
			}
		}
		
		private function KeyisDown(e: KeyboardEvent): void 
		{
			if (e.keyCode == 13)
			{
				if(inTrade == false)
				{
					var message = ChatTextField.text;
				    lobbyconnection.send("chatMsg", message);
				    message = "";
			        ChatTextField.text = "";
				}
			}
		}
		
		private function KeyisAwsome(e:KeyboardEvent)
		{
			if (e.keyCode == 13)
			{
				if (inTrade == true)
				{
					var message = ChatTextField.text;
				    lobbyconnection.send("chatMsg", message);
				    message = "";
			        ChatTextField.text = "";
				}
			}
		}
			
			private function connectfb(client:Client, fbid:String):void
			{
			    trace("Sucessfully connected to player.io");
			    fbuid = fbid;
			    TheClient = client;
		        //client.multiplayer.developmentServer = "localhost:8184";
			    client.bigDB.loadOrCreate("PlayerObjects", "fb" + fbuid, this.userload, null);
			    if(fbname != null && fbname != "")
			    {
				   TheClient.multiplayer.createJoinRoom(
					  "player_" + fbuid,								//Room id. If set to null a random roomid is used
					  "MyCode",							//The game type started on the server
					  true,								//Should the room be visible in the lobby?
					  {},									//Room data. This data is returned to lobby list. Variabels can be modifed on the server
					  {fbname:fbname},									//User join data
					  handleJoin,							//Function executed on successful joining of the room
					  handleError							//Function executed if we got a join error
				  );
			}
			else
			{
				alert("fbname/id not found");
			}
		}
		
		private function handleJoin(connection:Connection):void
		{
			trace("Sucessfully connected to the multiplayer server");
			TheConnection = connection;
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server");			 
			})
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, skin:String, badge:String, username:String, fbuid:String, pCount:int)
			{
				trace("Player Data -> " + skin + " ~ " + badge + " ~ " + username + " ~ " + fbuid + " ~ " + pCount);
				connection.send("HandlePlayer", fbuid); 
			})

			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint)
			{
				trace("Player with the userid", userid, "just left the room");																			  trace("kickhim");
				
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
		
		
		
		
		}
		
		public function handleMessages(m:Message)
		{
			if(m.type == "Menu")
			{
				TheClient.payVault.refresh(this.LoadGame);
			}
            else if (m.type == "playerset")
            {
                this.myPlayer = m.getInt(0);
			}
            else if(m.type == "playmusic")
			{
				mySound1 = new Sound();
				myChannel1 = new SoundChannel();
				mySound1.load(new URLRequest(String(m.getString(0))));
				myChannel1 = mySound1.play();
			}
			else if(m.type == "stopmusic")
			{
				myChannel1.stop();
			}
			else if(m.type == "stopit")
			{
				myChannel1.stop();
			}
			else if(m.type == "alert")
			{
				if(m.getString(0) == "fb" + fbuid)
				{
					alert(m.getString(1));
				}
			}
			else if(m.type == "clear")
			{
				DisplayTextField.htmlText = "<font color='#FF0000'>Chat Cleared!";
			}
			else if(m.type == "forcereload")
			{
				if(m.getString(0) != "fb" + fbuid && "fb" + fbuid != "")
				{
					
				  if (ExternalInterface.available)
					{
					  var result = ExternalInterface.call("reload");
					  //var result2 = ExternalInterface.call("notif");
					}
				 TheConnection.disconnect();
				 lobbyconnection.disconnect();
				gotoAndStop(5);
				}
			}
			else if(m.type == "playerBanned")
			{
				if(m.getString(2) == "fb" + fbuid)
				{
					
					gotoAndStop(4);
					stage.addEventListener(MouseEvent.RIGHT_CLICK, function(e:MouseEvent):void
								   {
									   //alert("Right click is disabled");
								   });
					reason.text = "Reason: " + m.getString(0);
					bywho.text = m.getString(1) + " Banned You!";
					alert(m.getString(0));
				}
			}
			trace(m);
		}
		
		public function item_over(e:MouseEvent) : *
      {
         Tweener.addTween(e.currentTarget,{
            "scaleX":0.7,
            "scaleY":0.7,
            "rotation":10,
            "time":0.2
         });
      }
      
      public function item_out(e:MouseEvent) : *
      {
         Tweener.addTween(e.currentTarget,{
            "scaleX":0.56,
            "scaleY":0.56,
            "rotation":0,
            "time":0.5
         });
         }
		public function updateOffers(offers:String)
		{
			if(offers_w.currentFrame == 1){
				i = 0;
				while(	offers_w.cont.numChildren > 0)
				{
						offers_w.cont.removeChildAt(0);
				}
				var updateOffers:Array = offers.split("~");;
				updateOffers.pop();
				if(updateOffers.length)
				{
					var offercont = 0
					for(var k in updateOffers)
					{
						
						addOffer(updateOffers[k],offercont);
						offercont = offercont + 1 
						trace("mi smo reataaras");
					}
				}
			}
		 }
		
		public function addOffer(offer:String, howbig:Number):void
		{
			var scrollingo = false
				if(offers_w.currentFrame == 1){    
            trace(howbig)
			var eventClip:offer_listitem = new offer_listitem();
			eventClip.name = offer;
			trace("mi smo retardi");
			eventClip.x = Math.floor(howbig / 5) * 122;
            //eventClip.y = howbig * 40 - Math.floor(howbig / 5) * 200;
			eventClip.y = ((i % 5) * (eventClip.height + 5));
			offers_w.cont.addChild(eventClip);
			trace("ti taj");
			//eventClip.y = i * (eventClip.height);
					if( offer.split(":")[3] != "0"){
						eventClip.ov.whois_txt.text = offer.split(":")[3] + " is here!";
						eventClip.ov.visible = true
						//eventClip.ov.whois_txt.text = offer.split(":")[3];
					}
			else{
				eventClip.ov.visible = false
			}
			 eventClip.name_txt.mouseEnabled = false;
		
			eventClip.bg.addEventListener(MouseEvent.CLICK,f);
                eventClip.name_txt.htmlText = offer.split(":")[0];
				trace("ti si level ljaks");
              function f(e:Event){
				  offer_btn.visible = false
			       refreshIt();
				   if(ctr_w.parent != null){ return}
				   	  eventClip.ov.visible = true
				  lobbyconnection.send("getin", offer.split(":")[1])
				 
         
            addChild(ctr_w);
		  ctr_w.width = 0.1
		  ctr_w.height = 0.1
		  ctr_w.alpha = 0.1
		  caurina.transitions.Tweener.addTween(ctr_w, {scaleX:1, scaleY:1, alpha:1, time:0.6});
		    ctr_w.x = 306.35
            ctr_w.y = 232.40
           ctr_w.setup(offer);
		   refreshIt();
      
            
               trace("suck")
		    
		
               }
			
			try{eventClip.item_mc.gotoAndStop(offer.split(":")[2]);}catch(e){}
		
			
			i++
			

		 offercount = offercount + 1;
			if (this.offers_w.cont.width > 509)
            {
				addEventListener(Event.ENTER_FRAME, this.scrollloopoffer);
				}
            else
			{
				
                    removeEventListener(Event.ENTER_FRAME, this.scrollloopoffer);
                this.offers_w.cont.x = 50;
			}
         }
       
	  }
		public function scrollloopoffer(event:Event)
        {
            if (mouseX > 470)
            {
                this.offers_w.cont.x = this.offers_w.cont.x - 10;
            }
            else if (mouseX < 29)
            {
                this.offers_w.cont.x = this.offers_w.cont.x + 10;
            }
            if (this.offers_w.cont.x > 50)
            {
                this.offers_w.cont.x = 50;
            }
            else if (this.offers_w.cont.x < -this.offers_w.cont.width + 227)
            {
                this.offers_w.cont.x = -this.offers_w.cont.width + 227;
            }
            return;
			}// end function
		public function removeOffer(offer:String):void
		{
			i--  
	  }
		
		public function alert(mess:String):void
		{
			var alertme;
			alertme = new alert_mc();
			alertme.x = 375;
			alertme.y = 250;
			addChild(alertme);
			alertme.inner.alert_txt.text = mess;
			alertme.inner.ok_btn.addEventListener(MouseEvent.CLICK, function (e:MouseEvent):void
			{
				removeChild(alertme);
			});
			alertme.inner.aleksa_btn.addEventListener(MouseEvent.CLICK, function (evt:MouseEvent):void {
				var url:String = "http://www.facebook.com/AleksaDaKingOfficial";
                var req:URLRequest = new URLRequest(url);
                navigateToURL(req, "_blank");
				});
		}
        public function loadHighscores(){
            var _local_1:*;
            if ((((currentFrame == 4)) || ((currentFrame == 3))))
            {
                return;
            };
            _local_1 = 0;
            while (_local_1 < 10)
            {
                this.top10[("e" + _local_1)].visible = false;
                _local_1 = (_local_1 + 1);
            };
            this.TheClient.bigDB.loadRange("PlayerObjects", "highscore", null, null, null, 10, this.top10loaded, this.top10fail);
        }
        public function top10fail(_arg_1:PlayerIOError){
            trace(("fail " + _arg_1));
        }
        public function top10loaded(_arg_1:Array){
            var _local_2:*;
            _local_2 = 0;
            while (_local_2 < _arg_1.length)
            {
                try
                {
                    this.top10[("e" + _local_2)].p_txt.text = ((_local_2 + 1) + ".");
                    this.top10[("e" + _local_2)].name_txt.text = _arg_1[_local_2].fbname;
                    this.top10[("e" + _local_2)].score_txt.text = _arg_1[_local_2].highscore;
                    this.top10[("e" + _local_2)].visible = true;
                }
                catch(e)
                {
                };
                _local_2 = (_local_2 + 1);
            };
		}
		
		public function hasLabel(arg1: flash.display.MovieClip, arg2: String): Boolean {
			return true;
		
		}
		
		public function findItem(Item:String)
        {
		    trace("Do You Have " + Item + "?");
            return TheClient.payVault.has(Item);
        }
		
		private function handleDisconnect():void
		{
			//canopen = true;
			//alert("Disconnected from server")
		}
		
		private function handleError(error:PlayerIOError):void
		{
			alert(String(error));
		}
		
		public function userload(aleksa: DatabaseObject): void 
		{
			this.user = aleksa;
			if (aleksa.fbname == null) 
			{
				aleksa.fbname = this.fbname;
			}
			if (aleksa.rounds == null) 
			{
				aleksa.rounds = 0;
			}
			if (aleksa.CurrentLevel == null) 
			{
				aleksa.CurrentLevel = 1;
			}
			if (aleksa.CurrentXP == null) 
			{
				aleksa.CurrentXP = 0;
			}
			if (aleksa.TotalXP == null) 
			{
				aleksa.TotalXP = 0;
			}
			if (aleksa.highscore == null) 
			{
				aleksa.highscore = 0;
			}
			if (aleksa.XPToNextLevel == null) 
			{
				aleksa.XPToNextLevel = 40;
			}
			if (aleksa.bg == null) 
			{
				aleksa.bg = "blue";
			}
			if (aleksa.username == null) 
			{
				aleksa.username = this.fbname;
			}
			if (aleksa.skins == null) 
			{
		        aleksa.skins = "none";
			}
			if (aleksa.badge == null) 
			{
				aleksa.badge = "one";
			}
			if (aleksa.headItem == null)
			{
				aleksa.headItem = "none";
		    }
			if (aleksa.mouthItem == null)
			{
				aleksa.mouthItem = "none";
			};
            if (aleksa.achievement == null)
            {
                aleksa.achievement = [];
			};
            if (aleksa.SecondChance == null)
            {
                aleksa.SecondChance = 0;
			}
			if (aleksa.handItem == null)
			{
				aleksa.handItem = "none";
			}
			if (aleksa.shoesItem == null)
			{
				aleksa.shoesItem = "none";
			}
			trace("zavrsavaj ovo");
		}
	}
	
}
