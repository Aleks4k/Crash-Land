package {
    import flash.display.MovieClip;

    public dynamic class MuteSound extends MovieClip {

        public function MuteSound(){
            addFrameScript(0, this.frame1, 1, this.frame2);
        }
        function frame1(){
            stop();
        }
        function frame2(){
            stop();
        }

    }
}//package game_fla

