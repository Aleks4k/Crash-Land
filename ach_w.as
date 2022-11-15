// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//ach_w

package {
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.events.MouseEvent;
    import flash.utils.*;
    import flash.events.*;
    import flash.display.*;
    //import fl.caurina.transitions.*;
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

    public dynamic class ach_w extends MovieClip {

        public var contentMask:MovieClip;
        public var track:MovieClip;
        public var content:MovieClip;
        public var close_btn:SimpleButton;
        public var slider:MovieClip;
        public var achs:Array;

        public function ach_w(){
            addFrameScript(0, this.frame1);
        }
        public function init(_arg_1:Array, _arg_2:Object){
            var _local_3:*;
            var _local_4:uint;
            var _local_5:uint;
            this.achs = new Array();
            for (_local_3 in _arg_2)
            {
                this.addAchievement(_arg_2[_local_3]);
            };
            _local_4 = 0;
            while (_local_4 < _arg_1.length)
            {
                _local_5 = 0;
                while (_local_5 < this.achs.length)
                {
                    if (this.achs[_local_5].id == _arg_1[_local_4])
                    {
                        this.achs[_local_5].mc.bg.gotoAndStop(2);
                        this.achs[_local_5].mc.inner.visible = true;
                    };
                    _local_5++;
                };
                _local_4++;
            };
            this.close_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.close);
        }
        public function close(_arg_1:MouseEvent){
            parent.removeChild(this);
        }
        public function addAchievement(_arg_1:Object){
            var _local_2:Number = this.achs.length;
            var _local_3:MovieClip = new achievement_e();
            if (_local_2 == (Math.round(((_local_2 - 0.01) / 2)) * 2))
            {
                _local_3.x = -210;
            }
            else
            {
                _local_3.x = 30;
            };
            _local_3.y = (Math.round(((_local_2 - 0.01) / 2)) * 57);
            _local_3.num = _local_2;
            _local_3.name_txt.text = _arg_1.n;
            _local_3.desc_txt.text = _arg_1.desc;
            _local_3.inner.gotoAndStop(_arg_1.id);
            _local_3.coins_txt.text = ("+" + _arg_1.coins);
            _local_3.scaleX = (_local_3.scaleY = 1.04);
            this.content.addChild(_local_3);
            this.achs.push({
                "mc":_local_3,
                "id":_arg_1.id
            });
            MovieClip(root)._scrollbar.init(this.content, this.contentMask, this.track, this.slider);
            MovieClip(root).overoutlistener(this.slider);
        }
        function frame1(){
            this.achs = new Array();
        }

    }
}//package 

