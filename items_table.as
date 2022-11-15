package 
{
    import adobe.utils.*;
    import caurina.transitions.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.engine.*;
    import flash.text.ime.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
	import playerio.VaultItem;
    
    public dynamic class items_table extends flash.display.MovieClip
    {
        public function items_table()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        public function cls(arg1:flash.events.MouseEvent):*
        {
			if(hehe == "yolo")
			{
				//flash.display.MovieClip(root).closeItNicely();
				flash.display.MovieClip(parent).removeChild(this);
			}
			else
			{
				flash.display.MovieClip(parent).removeChild(this);
			}
            return;
		}
		public function about(param1:int) : *
      {
         this.numbery = param1;
		}
        function uselessFunc(_arg_1:String, _arg_2:Array, _arg_3:Boolean=false){
            var _local_4:*;
            for each (_local_4 in _arg_2)
            {
                if (_local_4.k == _arg_1)
                {
                    if (_arg_3)
                    {
                        return (_local_4);
                    };
                    return (true);
                };
            };
            return (false);
      }

        public function setup(arg1:Array, arg2:Function, Nummbers:int):*
        {
			if(Nummbers == 1)
			{
				hehe = "yolo";
				trace("yolo");
			}
			else if(Nummbers == 2)
			{
			}
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
			MovieClip(root).refreshIt();
            this.ccb = arg2;
            caurina.transitions.Tweener.addTween(this, {"alpha":1, "y":stage.stageHeight / 2, "time":0.7});
            loc1 = [];
            loc2 = [];
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
				
                if (!(arg1[loc4].itemKey == "team") && !(arg1[loc4].itemKey == "vip")) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                ++loc4;
            }
            loc4 = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
                    (loc5 = new itemActual()).x = loc1.length * 34 - Math.floor(loc1.length / 10) * 340;
                    loc5.y = Math.floor(loc1.length / 10) * 34;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
                    this.cont.addChild(loc5);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.item_out, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.CLICK, this.item_down, false, 0, true);
                    loc1.push(loc3[loc4]);
                    loc2.push(loc5);
                }
                else 
                {
                    var loc6:*;
                    var loc7:*=((loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1);
                    loc6.amount = loc7;
                    loc2[loc1.indexOf(loc3[loc4])].amount_txt.text = loc2[loc1.indexOf(loc3[loc4])].amount + "";
                }
                ++loc4;
            }
			var _local_4:VaultItem;
			 var _local_6:*;
			 var _local_5:Array;
			 var _local_1:* = 0;
			 if (!MovieClip(root).recOpend)
            {
                _local_5 = MovieClip(root).usedItems;
            };
			 var _local_7:*;
			 var _local_8:*;
			 var _local_3:Array = [];
			 var _local_2:Array = MovieClip(root).recpot;
			 for each (_local_4 in MovieClip(root).myItems)
            {
			 _local_6 = MovieClip(root).getIType(_local_4.itemKey);
                            if (_local_6 == "premium")
                            {
                                this.prems = (this.prems + 1);
                            };
                            if ((((_local_6 == "normal")) || ((_local_6 == "powerups"))))
                            {
                                this.normals = (this.normals + 1);
                            };
                            if (_local_6 == "rare")
                            {
                                this.pure = (this.pure + 1);
                            };
                            if (_local_6 == "special")
                            {
                                this.specials = (this.specials + 1);
                            };
                            if (_local_6 == "mega_pure")
                            {
                                this.mega_pure = (this.mega_pure + 1);
                           };
                            if (!MovieClip(root).recOpend)
                            {
                                //_local_8 = _local_5.indexOf(_local_4.itemKey);
                                if (_local_8 != -1) continue;
                            };
                            //_local_7 = _local_2.indexOf(_local_4.itemKey);
                            if (_local_7 == -1)
                            {
                                if (this.uselessFunc(_local_4.itemKey, _local_3, false))
                                {
                                    this.uselessFunc(_local_4.itemKey, _local_3, true).b.amount_b.amount_f.text = (int(this.uselessFunc(_local_4.itemKey, _local_3, true).b.amount_b.amount_f.text) + 1).toString();
                                    this.uselessFunc(_local_4.itemKey, _local_3, true).b.amount_b.visible = true;        
                           };
						   };
                        };
            if (this.cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, this.scroll_loop, false, 0, true);
            }
			  this.normal_txt.text = this.normals;
            this.prem_txt.text = this.prems;
            this.pure_txt.text = this.pure;
            this.special_txt.text = this.specials;
            this.megapure_txt.text = this.mega_pure;
            return;
        }
		public function scroll_loop(arg1:flash.events.Event):*
		{
		  if (mouseY < -100)
            {
                this.cont.y = (this.cont.y + 12);
            }
			else
            {
                if (mouseY > 125)
                {
                    this.cont.y = (this.cont.y - 12);
                };
            };
			if (this.cont.y > this.orgY)
            {
                this.cont.y = this.orgY;
            };
            if (this.cont.y < ((this.orgY - this.cont.height) + 250))
            {
                this.cont.y = ((this.orgY - this.cont.height) + 250);
            };
		}

        public function item_over(param1:MouseEvent) : *
      {
         Tweener.addTween(param1.currentTarget,{
            "scaleX":0.7,
            "scaleY":0.7,
            "time":0.5
         });
         this.blsnd.play();
      }
      
      public function item_out(param1:MouseEvent) : *
      {
         Tweener.addTween(param1.currentTarget,{
            "scaleX":0.5,
            "scaleY":0.5,
            "time":0.4
         });
      }

        public function item_down(param1:MouseEvent) : *
        {
         Tweener.addTween(param1.currentTarget,{
            "scaleX":0.5,
            "scaleY":0.5,
            "rotation":0,
            "time":0.08
         });
         if(!MovieClip(root).findItem(param1.currentTarget.item_name))
         {
            MovieClip(root).alert("You don\'t own that item anymore!");
            return;
         }
         if (this.numbery != 69) 
            {
                this.ccb("select", param1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", param1.currentTarget.item_name);
            }
         removeEventListener(Event.ENTER_FRAME,this.scroll_loop);
		 trace("hi brother");
         MovieClip(parent).removeChild(this);
         //this.klicksnd.play();
      }

        public function entergc(arg1:flash.events.MouseEvent):*
        {
			flash.display.MovieClip(parent).removeChild(this);
            flash.display.MovieClip(root).openGiftcodeW();
            return;
        }

        internal function frame1():*
        {
            //this.close_btn.addEventListener(MouseEvent.CLICK, this.cls);
            alpha = 0;
            x = stage.stageWidth / 2;
            y = 0;
            this.nonlisted = ["team"];
            this.isnonlisted = false;
            this.orgY = this.cont.y;
            this.blsnd = new blub2();
//            this.klicksnd = new klicksound2();
            //this.Giftcode_btn.addEventListener(flash.events.MouseEvent.CLICK, this.entergc);
            return;
        }
      public   var prems = 0;
       public var normals = 0;
      public  var pure = 0;
       public var specials = 0;
       public var mega_pure = 0;
	   public var special_txt:TextField;
        public var prem_txt:TextField;
		public var megapure_txt:TextField;
		public var normal_txt:TextField;
        public var pure_txt:TextField;
		
        public var cont:flash.display.MovieClip;
		
		public var hehe:String = "";
		public var numbery:Number = 69;

        public var entergiftcode_btn:flash.display.SimpleButton;

        public var close_btn:flash.display.SimpleButton;

        public var nonlisted:Array;

        public var ccb:Function;

        public var isnonlisted:Boolean;

        public var orgY:Number;

        public var blsnd:flash.media.Sound;

        public var klicksnd:flash.media.Sound;
    }
}
