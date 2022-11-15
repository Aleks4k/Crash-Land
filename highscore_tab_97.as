// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//game_fla.highscore_tab_192

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

    public dynamic class highscore_tab_97 extends MovieClip {

        public var score_txt:TextField;
        public var hs_btn:SimpleButton;
        public var cb1:MovieClip;

        public function highscore_tab_97(){
            addFrameScript(0, this.frame1);
        }
        function frame1(){
            this.hs_btn.addEventListener(MouseEvent.MOUSE_UP, MovieClip(root).hideHighscore);
        }

    }
}//package game_fla

