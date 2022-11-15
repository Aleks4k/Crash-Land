// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//giftcodes

package 
{
    import flash.display.MovieClip;
    import flash.text.TextField;
    import flash.display.SimpleButton;
    import playerio.Client;
    import playerio.Connection;
    import flash.display.*;
    import flash.events.*;
    import playerio.*;
    import flash.utils.*;
    import caurina.transitions.*;

    public class giftcodes extends MovieClip 
    {

        public var gc:TextField;
        public var mc:MovieClip;
		public var TheClient;
        public var x_btn:SimpleButton;
        public var yes:SimpleButton;
		var myItems;
		var myCoins;
        var client:Client;

        public function giftcodes(fc:Client)
        {
            addFrameScript(0, this.frame1);
            this.client = fc;
            Tweener.addTween(this, {
                scaleX:0.7,
                scaleY:0.7,
                time:1,
                transition:"easeOutBack"
            });
            this.x_btn.addEventListener(MouseEvent.CLICK, this.closeThis);
            this.yes.addEventListener(MouseEvent.CLICK, this.getGC);
		}

        public function getGC(e)
        {
            var gcx:* = this.gc.text;
            trace(gcx);
            gotoAndStop(2);
			setTimeout(closeaa, 3900);
            var randomNumber:Number = Math.floor((Math.random() * 2516161));
            trace(randomNumber);
            this.client.multiplayer.createJoinRoom(("getGc_" + randomNumber), "Giftcodes", false, {}, {giftCode:gcx}, this.gcExterminate, null);
			trace("SVE SVOJE JEBO");
        }

        public function goxD()
        {
            gotoAndStop(4);
            this.x_btn.addEventListener(MouseEvent.CLICK, this.closeThis);
        }

        public function gcExterminate(connection:Connection)
        {
            var connection:Connection = connection;
            connection.addMessageHandler("giftcodes", function (m)
            {
                if (m.getString(0) != "error")
                {
                    gotoAndStop(3);
                    mc.item.gotoAndStop(m.getString(0));
                    //ex();
                    setTimeout(closeaa, 3900);
                }
                else
                {
                    gotoAndStop(4);
                    x_btn.addEventListener(MouseEvent.CLICK, closeThis);
                };
            });
       /* }

        public function ex()
        {
            Tweener.addTween(this, {
                scaleX:2,
                scaleY:2,
                time:4,
                alpha:0
            });*/
        }

        public function closeaa()
        {
            MovieClip(parent).removeChild(this);
        }

        public function closeThis(e)
        {
            MovieClip(parent).removeChild(this);
        }

        function frame1()
        {
            stop();
        }


    }
}//package 

