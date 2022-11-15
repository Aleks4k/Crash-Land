package 
{
	import caurina.transitions.Tweener;
    //import fl.transitions.Tweener;
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.text.*;
    
    public dynamic class items_mc extends flash.display.MovieClip
    {
        public function items_mc()
        {
            super();
            addFrameScript(0, this.frame1);
            this.scaleX = 0.6;
            this.scaleY = 0.6;
            Tweener.addTween(this, {"scaleX":1, "scaleY":1, "time":1, "rotation":0, "transition":"easeOutBack"});
            return;
        }

        internal function frame1():*
        {
			this.close_btn.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.clmwdn);
			this.head_btn.addEventListener(MouseEvent.CLICK, this.listHead);
			this.x_btn.addEventListener(MouseEvent.CLICK, this.destroyHead);
			this.hand_btn.addEventListener(MouseEvent.CLICK, this.listHand);
			this.remove_hand.addEventListener(MouseEvent.CLICK, this.destroyHand);
            this.mouth_btn.addEventListener(MouseEvent.CLICK, this.listMouth);
			this.remove_btn.addEventListener(MouseEvent.CLICK, this.destroyMouth);
            this.shoes_btn.addEventListener(MouseEvent.CLICK, this.listShoes);
			this.remove_shoes.addEventListener(MouseEvent.CLICK, this.destroyShoes);
			this.setred.addEventListener(MouseEvent.CLICK, this.setRedSkin);
			this.setblue.addEventListener(MouseEvent.CLICK, this.setBlueSkin);
			this.setyellow.addEventListener(MouseEvent.CLICK, this.setYellowSkin);
			this.setgreen.addEventListener(MouseEvent.CLICK, this.setGreenSkin);
			this.blue.addEventListener(MouseEvent.CLICK, this.setBlue);
			this.sun.addEventListener(MouseEvent.CLICK, this.setSun);
			//flash.display.MovieClip(root).deleteaitem();
            this.bs = new blub2();
            this.klicksnd = new klicksound1();
            this.hats_page2 = 0;
            return;
    
		
		}

        public function clmwdn(arg1:flash.events.MouseEvent):*
        {
			var skinee:* = this.currentSkin.currentFrameLabel;
			var hedovi:* = this.player.head.currentFrameLabel;
			var usnee:* = this.player.mouth.currentFrameLabel;
			var rukaaa:* = this.player.hands.currentFrameLabel;
			trace("almost done");
			var bgggg:* = MovieClip(root).user.bg;
			var shoeesice:* = this.player.shoes.currentFrameLabel;
			MovieClip(root).TheConnection.send("saveinv", skinee, hedovi, usnee, rukaaa, bgggg, shoeesice);
            flash.display.MovieClip(parent).removeChild(this);
            return;
		}

        public function listShoes(e):*
        {
			this.head_btn.visible = false;
			this.hand_btn.visible = false;
			this.mouth_btn.visible = false;
			this.remove_hand.visible = false;
			this.x_btn.visible = false;
			this.remove_btn.visible = false;
			this.remove_shoes.visible = true;
			this.state_txt.text = "";
			shoes_none.x = -184.8;
			shoes_none.y = 22.8;
			sh0.x = -144
			sh0.y = 22.8
			sh1.x = -104
			sh1.y = 22.8
            return;
		
		}

        public function destroyShoes(arg1:flash.events.MouseEvent):*
        {
			this.head_btn.visible = true;
			this.hand_btn.visible = true;
			this.mouth_btn.visible = true;
			this.remove_hand.visible = false;
			this.x_btn.visible = false;
			this.remove_btn.visible = false;
			this.remove_shoes.visible = false;
			this.state_txt.text = "Please choose an category!";
			shoes_none.x = -184.8;
			shoes_none.y = 900;
			sh0.x = -144
			sh0.y = 900
			sh1.x = -104
			sh1.y = 900
            return;
		 }

        public function listMouth(arg1:flash.events.MouseEvent):*
        {
			this.hand_btn.visible = false;
			this.head_btn.visible = false;
			this.shoes_btn.visible = false;
			this.remove_hand.visible = false;
			this.x_btn.visible = false;
			this.remove_btn.visible = true;
			this.state_txt.text = "";
			mouth_none.x = -184.8
			mouth_none.y = 22.4
			mo0.x = -144.65
			mo0.y = 22.4
			mo1.x = -104.5;
			mo1.y = 22.4
			mo2.x = -63.6;
			mo2.y = 22.4
            return;
		}
        public function destroyMouth(arg1:flash.events.MouseEvent):*
        {
			this.hand_btn.visible = true;
			this.head_btn.visible = true;
			this.shoes_btn.visible = true;
			this.remove_hand.visible = false;
			this.x_btn.visible = false;
			this.remove_shoes.visible = false;
			this.remove_btn.visible = false;
			this.state_txt.text = "Please choose an category!";
			mouth_none.x = -181
			mouth_none.y = 900
			mo0.x = -184.8
			mo0.y = 900
			mo1.x = -144.65
			mo1.y = 900
			mo2.x = -104.5
			mo2.y = 900
            return;
		 
		 }

        public function listHead(arg1:flash.events.MouseEvent):*
        {
			this.hand_btn.visible = false;
			this.mouth_btn.visible = false;
			this.shoes_btn.visible = false;
			this.remove_hand.visible = false;
			this.remove_btn.visible = false;
			this.remove_shoes.visible = false;
			head_none.x = -184.8;
			head_none.y = 22.4;
			of0.x = -144.65;
			of0.y = 22.4;
			of1.x = -104.5;
			of1.y = 22.4;
			of2.x = -63.6;
			of2.y = 22.4;
			of3.x = -22.75;
			of3.y = 22.4;
			of4.x = 18.15;
			of4.y = 22.4;
			of5.x = 59.15;
			of5.y = 22.4;
			of6.x = 100;
			of6.y = 22.4;
			of7.x = 141.35;
			of7.y = 22.4;
			of8.x = 181.6;
			of8.y = 22.4;
			of9.x = 221.75;
			of9.y = 22.4;
			of10.x = 260.4;
			of10.y = 22.4;
			of11.x = -184.8;
			of11.y = 59.75;
			of12.x = -144.65;
			of12.y = 59.75;
			of13.x = -103.75;
			of13.y = 59.75;
			of14.x = -62.9;
			of14.y = 59.75;
			of15.x = -22;
			of15.y = 59.75;
			of16.x = 19;
			of16.y = 59.75;
			of17.x = 59.85;
			of17.y = 59.75;
			of18.x = 101.2;
			of18.y = 59.75;
			of19.x = 141.45;
			of19.y = 59.75;
			of20.x = 181.6;
			of20.y = 59.75;
			of21.x = 221.75;
			of21.y = 59.75;
			of22.x = 260.4;
			of22.y = 59.75;
			of23.x = -184.8;
			of23.y = 96.70;
			of24.x = -144.65;
			of24.y = 96.70;
			of25.x = -103.75;
			of25.y = 96.70;
			of26.x = -62.9;
			of26.y = 96.70;
			of27.x = -22;
			of27.y = 96.70;
			of28.x = 19;
			of28.y = 96.70;
			of29.x = 59.85;
			of29.y = 96.70;
			of30.x = 101.2;
			of30.y = 96.70;
			this.x_btn.visible = true;
			this.state_txt.text = "";
            return;
		
		}
        public function destroyHead(arg1:flash.events.MouseEvent):*
        {
			this.hand_btn.visible = true;
			this.mouth_btn.visible = true;
			this.shoes_btn.visible = true;
			head_none.x = -100;
			head_none.y = -600;
			of0.x = -144.65;
			of0.y = 900;
			of1.x = -104.5;
			of1.y = 900;
			of2.x = -63.6;
			of2.y = 900;
			of3.x = -22.75;
			of3.y = 900;
			of4.x = 18.15;
			of4.y = 900;
			of5.x = 59.15;
			of5.y = 900;
			of6.x = 100;
			of6.y = 900;
			of7.x = 141.35;
			of7.y = 900;
			of8.x = 181.6;
			of8.y = 900;
			of9.x = 221.75;
			of9.y = 900;
			of10.x = 260.4;
			of10.y = 900;
			of11.x = -184.8;
			of11.y = 900;
			of12.x = -144.65;
			of12.y = 900;
			of13.x = -103.75;
			of13.y = 900;
			of14.x = -62.9;
			of14.y = 900;
			of15.x = -22;
			of15.y = 900;
			of16.x = 19;
			of16.y = 900;
			of17.x = 59.85;
			of17.y = 900;
			of18.x = 101.2;
			of18.y = 900;
			of19.x = 141.45;
			of19.y = 900;
			of20.x = 181.6;
			of20.y = 900;
			of21.x = 221.75;
			of21.y = 900;
			of22.x = 260.4;
			of22.y = 900;
			of23.x = -184.8;
			of23.y = 900;
			of24.x = -144.65;
			of24.y = 900;
			of25.x = -103.75;
			of25.y = 900;
			of26.x = -62.9;
			of26.y = 900;
			of27.x = -22;
			of27.y = 900;
			of28.x = 19;
			of28.y = 900;
			of29.x = 59.85;
			of29.y = 900;
			of30.x = 101.2;
			of30.y = 900;
			this.x_btn.visible = false;
		    this.state_txt.text = "Please choose an category!";
			return;
        
		}
		
        public function listHand(arg1:flash.events.MouseEvent):*	
        {
		   this.head_btn.visible = false;
		   this.x_btn.visible = false;
			this.mouth_btn.visible = false;
			this.remove_btn.visible = false;
			this.remove_shoes.visible = false;
			this.shoes_btn.visible = false;
			this.remove_hand.visible = true;
			hands_none.x = -184.8;
			hands_none.y = 22.4;
			hd0.x = -144.50
			hd0.y = 22.40
			hd1.x = -104.10
			hd1.y = 22.40
			hd2.x = -63.05
			hd2.y = 22.40
			hd3.x = -22.15
			hd3.y = 22.40
			hd4.x = 18.70
			hd4.y = 22.40
			this.state_txt.text = "";
			return;
		}
		
        public function destroyHand(arg1:flash.events.MouseEvent):*	
        {
		    this.head_btn.visible = true;
		   this.x_btn.visible = false;
			this.mouth_btn.visible = true;
			this.shoes_btn.visible = true;
			this.remove_hand.visible = false;
			hands_none.x = -184.8;
			hands_none.y = 900;
			hd0.x = -144.50
			hd0.y = 900
			hd1.x = -104.10
			hd1.y = 900
			hd2.x = -63.05
			hd2.y = 900
			hd3.x = -22.15
			hd3.y = 900
			hd4.x = 18.70
			hd4.y = 900
			this.state_txt.text = "Please choose an category!";
			return;		
		}
		
        public function setup():*
        {
			var loc2:*=undefined;
            var loc3:*=undefined;
            trace("Loading Inventory");
            trace("Got Current Skin");
			x_btn.visible = false;
			remove_hand.visible = false;
			remove_btn.visible = false;
			remove_shoes.visible = false;
            var loc1:*=0;
            trace("Setup In progress");
			this.items_loading.visible = false;
			this.player.head.gotoAndStop(flash.display.MovieClip(root).user.headItem);
			this.player.mouth.gotoAndStop(flash.display.MovieClip(root).user.mouthItem);
			this.player.hands.gotoAndStop(flash.display.MovieClip(root).user.handItem);
			this.player.shoes.gotoAndStop(flash.display.MovieClip(root).user.shoesItem);
            this.currentSkin.gotoAndStop(flash.display.MovieClip(root).user.skins);
            this.outfit_head = ["cowboy", "indian","boxhead","fireman","pilot","Anon","Pan","bucket","skull","Cone","Chopper","hockey","pumpkin","pokerface","army","Cereal","viking","sombrero","swat","builder","aviator","Chinese","foreveralone","really","trollface","party","Blonde","Anbu","Umbrella","Helmet","AmericanHelmet"];
			this.outfit_hands = ["gloves", "ballon","blueballoon","fan","armour"];
			this.outfit_mouth = ["bandana","gas","blabla"];
			this.outfit_shoes = ["starshoes","goldenshoes"];
            this.skins = ["team","vip","crashland","pussyskin","hallowen","unstoppable","xmas","donator","dealer","matrix","memeskin","boxerskin","anonskin"];
            this.outfit_arrays = [this.outfit_head, this.outfit_head, this.outfit_hands, this.outfit_shoes, this.outfit_mouth, this.outfit_special];
            this.skins_counter = 0;
            this.hats_counter = 0;
			this.mouth_counter = 0;
            this.hands_counter = 0;
			this.shoes_counter = 0;
			
            while (loc1 < this.skins.length) 
            {
                this["sk" + loc1].visible = false;
                if (flash.display.MovieClip(root).findItem(this.skins[loc1])) 
                {
                    this.initSkin(this["sk" + this.skins_counter], this.skins[loc1]);
                    loc2 = this;
                    loc3 = this.skins_counter + 1;
                    loc2.skins_counter = loc3;
                }
                loc1 = loc1 + 1;
            }
            loc1 = 0;
            while (loc1 < this.outfit_head.length) 
            {
                this["of" + loc1].visible = false;
                if (flash.display.MovieClip(root).findItem(this.outfit_head[loc1])) 
                {
                    this.initHat(this["of" + this.hats_counter], this.outfit_head[loc1]);
                    loc2 = this;
                    loc3 = this.hats_counter + 1;
                    loc2.hats_counter = loc3;
                }				
                loc1 = loc1 + 1;
			}
            loc1 = 0;
            while (loc1 < this.outfit_mouth.length) 
            {
                this["mo" + loc1].visible = false;
                if (flash.display.MovieClip(root).findItem(this.outfit_mouth[loc1])) 
                {
                    this.initMouth(this["mo" + this.mouth_counter], this.outfit_mouth[loc1]);
                    loc2 = this;
                    loc3 = this.mouth_counter + 1;
                    loc2.mouth_counter = loc3;
                }
                loc1 = loc1 + 1;
			}
            loc1 = 0;
            while (loc1 < this.outfit_shoes.length) 
            {
                this["sh" + loc1].visible = false;
                if (flash.display.MovieClip(root).findItem(this.outfit_shoes[loc1])) 
                {
                    this.initShoes(this["sh" + this.shoes_counter], this.outfit_shoes[loc1]);
                    loc2 = this;
                    loc3 = this.shoes_counter + 1;
                    loc2.shoes_counter = loc3;
                }
                loc1 = loc1 + 1;
            }
			loc1 = 0;
            while (loc1 < this.outfit_hands.length) 
            {
                this["hd" + loc1].visible = false;
                if (flash.display.MovieClip(root).findItem(this.outfit_hands[loc1])) 
                {
                    this.initHands(this["hd" + this.hands_counter], this.outfit_hands[loc1]);
                    loc2 = this;
                    loc3 = this.hands_counter + 1;
                    loc2.hands_counter = loc3;
                }
                loc1 = loc1 + 1;
            }
			this.initHat(this.head_none, "none");
            this.initHands(this.hands_none, "none");
			this.initMouth(this.mouth_none, "none");
			this.initShoes(this.shoes_none, "none");
            return;
        }

        public function initHatBtns(arg1:int):*
        {
            var loc2:*=undefined;
            var loc3:*=undefined;
            this.hats_counter = 0;
            var loc1:*=0;
            while (loc1 < this.outfit_head.length) 
            {
                if (loc1 <= 3) 
                {
                    this["of" + loc1].visible = false;
                }
                if (loc1 >= arg1) 
                {
                    if (this.hats_counter > 3) 
                    {
                        if (this.hats_page2 == 0) 
                        {
                            this.hats_page2 = loc1;
                        }
                    }
                    else 
                    {
                        this.initHat(this["of" + this.hats_counter], this.outfit_head[loc1]);
                        loc2 = this;
                        loc3 = this.hats_counter + 1;
                        loc2.hats_counter = loc3;
                    }
                }
                loc1 = loc1 + 1;
            }
            return;
        }

        public function initSkin(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "skin");
            return;
        }

        public function initHat(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "head");
            return;
        }

        public function initHands(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "hands");
            return;
		}

        public function initShoes(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "shoes");
            return;
		}

        public function initMouth(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "mouth");
            return;
        }

        public function initItem(arg1:flash.display.MovieClip, arg2:String, arg3:String):*
        {
            arg1.visible = true;
            arg1.gotoAndStop(flash.display.MovieClip(root).hasLabel(arg1, arg2) ? arg2 : 1);
            arg1.itm = arg2;
            arg1.typ = arg3;
            if (!arg1.hasEventListener(flash.events.MouseEvent.MOUSE_DOWN)) 
            {
                arg1.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.sk_over);
                arg1.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.sk_out);
                arg1.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.sk_down);
                arg1.addEventListener(flash.events.MouseEvent.MOUSE_UP, this.sk_up);
            }
            return;
        }

        public function sk_over(arg1:flash.events.MouseEvent):*
        {
            /*this.bs.play(0, 0, new flash.media.SoundTransform(0.75));
            Tweener.addTween(arg1.currentTarget, {"scaleX":0.7, "scaleY":0.7, "rotation":10, "time":0.2});*/
            return;
        }

        public function sk_out(arg1:flash.events.MouseEvent):*
        {
            /*Tweener.addTween(arg1.currentTarget, {"scaleX":0.68, "scaleY":0.68, "rotation":0, "time":0.5});*/
            return;
        }

        public function sk_down(arg1:flash.events.MouseEvent):*
        {
			this.selectItem(arg1.currentTarget);
			this.klicksnd.play();
            /*Tweener.addTween(arg1.currentTarget, {"scaleX":0.60, "scaleY":0.60, "rotation":-8, "time":0.12});*/
            return;
        }

        public function sk_up(arg1:flash.events.MouseEvent):*
        {
            return;
        }

        public function selectItem(arg1:*):*
        {
			trace("Selectitem");
            if (arg1.typ == "skin") 
            {
                flash.display.MovieClip(root).user.skins = arg1.itm;
                this.updateSkin();
                //this.updateOutfit();
            }
			else if (arg1.typ == "head") 
            {
                flash.display.MovieClip(root).user.headItem = arg1.itm;
                this.updateOutfit();
			}
			else if (arg1.typ == "mouth") 
            {
                flash.display.MovieClip(root).user.mouthItem = arg1.itm;
                this.updateOutfit();
			}
			else if (arg1.typ == "shoes") 
            {
                flash.display.MovieClip(root).user.shoesItem = arg1.itm;
                this.updateOutfit();
            }
			else if (arg1.typ == "hands") 
            {
                flash.display.MovieClip(root).user.handItem = arg1.itm;
                this.updateOutfit();
            }
            return;
        }

        public function updateSkin():*
        {
			trace("updated");
            if (flash.display.MovieClip(root).user.skins != "none") 
            {
                this.currentSkin.gotoAndStop(flash.display.MovieClip(root).user.skins);
				flash.display.MovieClip(root).updateSkin();
				//flash.display.MovieClip(root).skins.gotoAndStop(flash.display.MovieClip(root).user.skins);
            }
            else 
            {
                this.currentSkin.gotoAndStop("blue");
				flash.display.MovieClip(root).updateSkin();
            }
            return;
        }

        public function updateOutfit():*
        {
            this.player.head.gotoAndStop(flash.display.MovieClip(root).user.headItem);
			this.player.hands.gotoAndStop(flash.display.MovieClip(root).user.handItem);
			this.player.mouth.gotoAndStop(flash.display.MovieClip(root).user.mouthItem);
			this.player.shoes.gotoAndStop(flash.display.MovieClip(root).user.shoesItem);
            return;
        }

        public function pu_over(arg1:flash.events.MouseEvent):*
        {
            this.pu_info.visible = true;
            this.pu_info.alpha = 0;
            this.pu_info.x = Math.max(-160, arg1.currentTarget.x);
            this.pu_info.y = 100;
            this.pu_info.gotoAndStop(arg1.currentTarget.puid);
            return;
        }

        public function pu_out(arg1:flash.events.MouseEvent):*
        {
            return;
        }

        public function deldown(arg1:flash.events.MouseEvent):*
        {
            flash.display.MovieClip(root).itemRemoveSelector();
            return;
		}

        public function setRedSkin(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.skins = "red";
			this.currentSkin.gotoAndStop("red");
		}

        public function setBlueSkin(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.skins = "blue";
			this.currentSkin.gotoAndStop("blue");
		}

        public function setYellowSkin(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.skins = "yellow";
			this.currentSkin.gotoAndStop("yellow");
		}

        public function setBlue(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.bg = "blue";
			trace("Dat blue bg")
		}

        public function setSun(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.bg = "Sunset";
			trace("Dat zuti bg")
		}

        public function setGreenSkin(arg1:flash.events.MouseEvent):*
        {
            MovieClip(root).user.skins = "green";
			this.currentSkin.gotoAndStop("green");
        }

        public function snddown(arg1:flash.events.MouseEvent):*
        {
            trace("hell no");
            return;
        }

        public var of3:*;
		public var mo0:*;
		public var mo1:*;
		public var mo2:*;
		public var sp0:*;
		public var sp1:*;
		

        public var trading_pass:flash.display.MovieClip;

        public var hnd9:*;

        public var of12:*;

        public var og3:*;

        public var of4:*;

        public var of13:*;

        public var of5:*;
		
        public var sp:flash.display.MovieClip;
		public var head_btn:flash.display.SimpleButton;
		public var hand_btn:flash.display.SimpleButton;
		public var mouth_btn:flash.display.SimpleButton;
		public var shoes_btn:flash.display.SimpleButton;
		public var setred:flash.display.SimpleButton;
		public var setgreen:flash.display.SimpleButton;
		public var setblue:flash.display.SimpleButton;
		public var setyellow:flash.display.SimpleButton;
		public var x_btn:flash.display.SimpleButton;
		public var remove_btn:flash.display.SimpleButton;
		public var remove_hand:flash.display.SimpleButton;
		public var remove_shoes:flash.display.SimpleButton;

        public var pb:flash.display.MovieClip;

        public var ov:flash.display.MovieClip;

        public var of14:*;

        public var sh0:*;

        public var of6:*;

        public var og5:*;

        public var xtra_txt:flash.text.TextField;

        public var hnd10:*;

        public var hnd15:*;

        public var hnd16:*;

        public var of15:*;
		public var of16:*;
		public var of17:*;
		public var of18:*;
		public var of19:*;
		public var of20:*;
		public var of21:*;
		public var of22:*;
		public var of23:*;
		public var of24:*;
		public var of25:*;
		public var of26:*;
		public var of27:*;
		public var of28:*;
		public var of29:*;
		public var of30:*;

        public var sh1:*;

        public var of7:*;

        public var og6:*;

        public var hnd11:*;
        public var of8:*;

        public var og7:*;

        public var om0:*;

        public var hnd12:*;

        public var hnd13:*;

        public var hnd14:*;

        public var og8:*;

        public var sh3:*;

        public var of9:*;

        public var om1:*;

        public var sk0:flash.display.MovieClip;

        public var sh4:*;

        public var sh5:*;

        public var sh6:*;

        public var og9:*;

        public var om2:*;

        public var sk10:flash.display.MovieClip;

        public var sk1:flash.display.MovieClip;

        public var om10:*;

        public var hands_none:*;
		public var mouth_none:*;

        public var om3:*;

        public var sk11:flash.display.MovieClip;
		public var sk12:flash.display.MovieClip;

        public var sk2:flash.display.MovieClip;

        public var invi:flash.display.MovieClip;

        public var del_btn:flash.display.SimpleButton;

        public var om11:*;

        public var hnd0:*;

        public var om4:*;

        public var sk3:flash.display.MovieClip;

        public var sw:flash.display.MovieClip;

        public var mskin:flash.display.MovieClip;

        public var hnd1:*;

        public var sk13:flash.display.MovieClip;

        public var sk14:flash.display.MovieClip;

        public var om5:*;

        public var sk4:flash.display.MovieClip;

        public var hnd2:*;

        public var om6:*;

        public var sk5:flash.display.MovieClip;

        public var currentSkin:flash.display.MovieClip;

        public var close_btn:flash.display.SimpleButton;

        public var hnd3:*;

        public var om7:*;

        public var sk6:flash.display.MovieClip;

        public var hnd4:*;

        public var om8:*;

        public var head_none:*;
		
		public var shoes_none:*;

        public var sk7:flash.display.MovieClip;

        public var builderskin:flash.display.MovieClip;

        public var fthskin:flash.display.MovieClip;

        public var hnd5:*;

        public var om9:*;

        public var of0:*;

        public var sk8:flash.display.MovieClip;

        public var ninj:flash.display.MovieClip;

        //public var snd_btn:flash.display.SimpleButton;

        public var hnd6:*;

        public var og10:*;

        public var vipPass:flash.display.MovieClip;

        public var of1:*;

        public var sk9:flash.display.MovieClip;

        public var bs:flash.media.Sound;

        public var ks:flash.media.Sound;

        public var outfit:Object;

        public var hats_page2:int;

        public var skins_counter:uint;

        public var hats_counter:uint;
		public var mouth_counter:uint;
		public var shoes_counter:uint;


        public var hands_counter:uint;

        public var outfit_head:Array;


        public var xmasskin_mc:flash.display.MovieClip;

        public var outfit_mouth:Array;
		public var shoes_mouth:Array;

        public var outfit_hands:Array;

        public var skins:Array;

        public var outfit_arrays:Array;

        public var guardian_pu:flash.display.MovieClip;
        public var idk:itemActual;

        public var premPass:flash.display.MovieClip;

        public var charWears:flash.display.MovieClip;

        public var plusPass:flash.display.MovieClip;

        public var bird_pu:flash.display.MovieClip;

        public var verified:itemActual;

        public var hnd17:itemActual;

        public var aaa:flash.display.SimpleButton;

        public var vip:itemActual;

        public var team:itemActual;

        public var pu_info:flash.display.MovieClip;

        public var hnd7:*;

        public var og11:*;

        public var of10:*;

        public var og1:*;

        public var of2:*;
		public var blue:*;
		public var sun:*;
		public var snd_btn:flash.display.SimpleButton;

        public var vip_pass:flash.display.MovieClip;

        public var hnd8:*;

        public var of11:*;

        public var og2:*;

        public var og0:*;
    }
}
