// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//game_fla.sprite3137_221

package {
    import flash.display.MovieClip;
    import flash.text.TextField;
    import flash.display.SimpleButton;
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

    public dynamic class sprite3137_221 extends MovieClip {

        public var left:TextField;
        public var close_btn:SimpleButton;
        public var use_btn:SimpleButton;

        public function sprite3137_221(){
            addFrameScript(0, this.frame1, 1, this.frame2);
        }
        public function setup(){
            //this.left.text = MovieClip(root).user.SecondChance + " left";
        }
        public function useSC(_arg_1:*){
            MovieClip(root).hideDialog();
            MovieClip(root).loadPlayerPos();
            MovieClip(root).usedBefore = true;
        }
        function frame1(){
            stop();
        }
        function frame2(){
            this.use_btn.addEventListener(MouseEvent.CLICK, this.useSC);
        }

    }
}//package game_fla

