// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//game_fla.memepack_139

package {
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.utils.*;
    import flash.events.*;
    import flash.display.*;
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

    public dynamic class memepack_139 extends MovieClip {

        public var unpack_btn:SimpleButton;
        public var close_btn:SimpleButton;

        public function memepack_139(){
            addFrameScript(0, this.frame1, 21, this.frame22);
        }
        public function closethis(_arg_1:*){
            MovieClip(root).opened = "";
			MovieClip(parent).removeChild(this);
        }
        public function unpack(_arg_1:*){
            gotoAndStop("unpacking");
            MovieClip(root).unlockMyChest();
        }
        function frame1(){
            stop();
        }
        function frame22(){
            this.close_btn.addEventListener(MouseEvent.CLICK, this.closethis);
            this.unpack_btn.addEventListener(MouseEvent.CLICK, this.unpack);
            stop();
        }

    }
}//package game_fla

