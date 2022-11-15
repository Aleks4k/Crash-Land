// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//Prem_shopMc

package {
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import com.freeactionscript.Scrollbar;
    import flash.events.MouseEvent;
    import flash.utils.*;
    import flash.events.*;
    import flash.display.*;
    import fl.transitions.*;
    import flash.filters.*;
    import flash.net.*;
    import flash.geom.*;
    import flash.accessibility.*;
    import flash.text.*;
    import flash.errors.*;
    import flash.media.*;
    import flash.external.*;
    import flash.system.*;
    import adobe.utils.*;
    import flash.desktop.*;
    import flash.globalization.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.text.ime.*;
    import flash.text.engine.*;
    import flash.ui.*;
    import flash.xml.*;

    public dynamic class Prem_shopMc extends MovieClip {

        public var ACPoint:MovieClip;
        public var masker:MovieClip;
        public var bar:MovieClip;
        public var close_btn:SimpleButton;
        public var pad:MovieClip;
        public var pscbar:Scrollbar;
        public var xdd:Array;
        public var coinsbar:buyCoins;
        //public var enoughtRandom;

        public function Prem_shopMc(){
            addFrameScript(0, this.frame2);
			trace("drugi");
        }
        public function setupPremShop(){
            this.listemxd();
			trace("treci");
        }
        public function setCoinsBar(){
            this.coinsbar.Try1.addEventListener(MouseEvent.CLICK, this.onClickCoins("500"));
            this.coinsbar.Try2.addEventListener(MouseEvent.CLICK, this.onClickCoins("1000"));
            this.coinsbar.Try3.addEventListener(MouseEvent.CLICK, this.onClickCoins("1500"));
            this.coinsbar.Try4.addEventListener(MouseEvent.CLICK, this.onClickCoins("2000"));
			trace("cet");
        }
        public function onClickCoins(fuckincoins:*):Function{
            var lel:* = function (){
                var _local_1:* = fuckincoins;
                MovieClip(root).purchaseCoins(_local_1);
            };
            return (lel);
        }
        public function listemxd(){
            var _local_2:*;
            var _local_3:buyPrem;
            this.ACPoint.addChild(this.coinsbar);
            this.setCoinsBar();
            var _local_1:int = 1;
            for each (_local_2 in this.xdd)
            {
                if (_local_2.n == "RandomPure")
                {
                    if (MovieClip(root).MyDB.feast.indexOf("RandomPure") != -1) continue;
                };
                _local_3 = new buyPrem(_local_2.n, _local_2.p, _local_2.d, _local_2.pr, this.buyitxd);
                _local_3.y = ((_local_1 * (_local_3.height + 2)) + 2);
                this.ACPoint.addChild(_local_3);
                _local_1++;
            };
            this.pscbar.init(this.ACPoint, this.masker, this.pad, this.bar);
        }
        public function buyitxd(_arg_1:String){
            
			MovieClip(root).purchaseItem(_arg_1, {
                "n":_arg_1,
                "price":this.getPrice,
                "description":this.getDsc(_arg_1)
            });
        }
        public function getDsc(_arg_1:*):String{
            var _local_2:*;
            for each (_local_2 in this.xdd)
            {
                if (_local_2.n == _arg_1)
                {
                    return (_local_2.d);
                };
            };
            return ("cool item :D");
        }
        public function getPrice(_arg_1:*):String{
            var _local_2:*;
            for each (_local_2 in this.xdd)
            {
                if (_local_2.n == _arg_1)
                {
                    return (_local_2.p);
                };
            };
            return ("cool price :D");
        }
        public function clmwdn(_arg_1:MouseEvent){
            parent.removeChild(this);
        }
        function frame2(){
            stop();
            this.pscbar = new Scrollbar();
            this.xdd = [{
                "n":"vip",
                "p":149,
                "d":"VIP CARD",
                "pr":"4.99"
            }, {
                "n":"memepack",
                "p":399,
                "d":"Meme Pack(really, troll face, forever alone)",
                "pr":"3.99"
            }, {
                "n":"matrix",
                "p":249,
                "d":"Skin",
                "pr":"2.49"
            }, {
                "n":"donator",
                "p":199,
                "d":"Skin",
                "pr":"1.99"
            }, {
                "n":"Blonde",
                "p":149,
                "d":"Hair",
                "pr":"1.49"
            }, {
                "n":"starshoes",
                "p":99,
                "d":"Shoes",
                "pr":"0.99"
            }, {
                "n":"Sunset",
                "p":99,
                "d":"Background",
                "pr":"0.99"
            }, {
                "n":"Anbu",
                "p":149,
                "d":"Head",
                "pr":"1.49"
            }, {
                "n":"SecondChance",
                "p":99,
                "d":"Use them to continue falling after failing",
                "pr":"0.99"
            }, {
                "n":"blueballoon",
                "p":49,
                "d":"Hand",
                "pr":"0.49"
            }, {
                "n":"really",
                "p":149,
                "d":"Head",
                "pr":"1.49"
            }, {
                "n":"trollface",
                "p":149,
                "d":"Head",
                "pr":"1.49"
            }, {
                "n":"foreveralone",
                "p":149,
                "d":"Head",
                "pr":"1.49"
            }, {
                "n":"Chinese",
                "p":199,
                "d":"Hat",
                "pr":"1.99"
            }, {
                "n":"aviator",
                "p":149,
                "d":"Hat",
                "pr":"1.49"
            }, {
                "n":"bandana",
                "p":149,
                "d":"Mouth",
                "pr":"1.49"
            }, {
                "n":"TradingTicket",
                "p":149,
                "d":"Access Card",
                "pr":"1.49"
            }, {
                "n":"indian",
                "p":149,
                "d":"Hat",
                "pr":"1.49"
            }, {
                "n":"blabla",
                "p":99,
                "d":"Mouth",
                "pr":"0.99"
            }, {
                "n":"cowboy",
                "p":99,
                "d":"Hat",
                "pr":"0.99"
            }, {
                "n":"builder",
                "p":99,
                "d":"Hat",
                "pr":"0.99"
            }, {
                "n":"Cereal",
                "p":99,
                "d":"Sexy face :3",
                "pr":"0.99"
            }, {
                "n":"army",
                "p":99,
                "d":"Be the one !",
                "pr":"0.99"
            }];
            this.coinsbar = new buyCoins();
            //this.enoughtRandom = false;
            this.close_btn.addEventListener(MouseEvent.CLICK, this.clmwdn);
            this.setupPremShop();
        }

    }
}//package 

