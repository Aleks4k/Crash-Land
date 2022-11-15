// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//shop_sel_w

package {
    import flash.display.MovieClip;
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

    public dynamic class shop_sel_w extends flash.display.MovieClip {

        public var inner:MovieClip;
        public var bg:MovieClip;

        public function shop_sel_w(){
            addFrameScript(0, this.frame1);
        /*}
        public function closeW(_arg_1:MouseEvent){
            this.inner.visible = false;
            this.board.visible = false;
			this.bg.visible = false;*/
        }
        function frame2(){
            this.bg.alpha = 0;
            this.inner.alpha = 0;
            this.board.scaleY = 0;
            this.board.scaleX = 0;
            //this.inner.shop_btn.addEventListener(MouseEvent.CLICK, MovieClip(root).openShop);
            //this.inner.prem_btn.addEventListener(MouseEvent.CLICK, MovieClip(root).openPremShop);
        }

    }
}//package 

