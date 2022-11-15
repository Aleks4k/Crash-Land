// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//unpackMc

package {
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.events.MouseEvent;

    public dynamic class unpackMc extends MovieClip {

        public var close_btn:SimpleButton;

        public function unpackMc(){
            addFrameScript(1, this.frame2);
        }
        public function close(_arg_1:*){
            parent.removeChild(this);
        }
        function frame2(){
            this.close_btn.addEventListener(MouseEvent.CLICK, this.close);
        }

    }
}//package 

