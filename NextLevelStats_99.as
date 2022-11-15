// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//game_fla.NextLevelStats_194

package {
    import flash.display.MovieClip;
    import flash.text.TextField;
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

    public dynamic class NextLevelStats_99 extends MovieClip {

        public var XPText:TextField;
        public var levelname_txt:TextField;
        public var NextLevelText:TextField;

        public function NextLevelStats_99(){
            addFrameScript(0, this.frame1);
        }
        public function nextLevels(){
            if (MovieClip(root).NextLevel == 2)
            {
                this.NextLevelText.text = "2";
                this.levelname_txt.text = "Beginner";
            };
            if (MovieClip(root).NextLevel == 3)
            {
                this.NextLevelText.text = "3";
                this.levelname_txt.text = "Freshman";
            };
            if (MovieClip(root).NextLevel == 4)
            {
                this.NextLevelText.text = "4";
                this.levelname_txt.text = "Recruit";
            };
            if (MovieClip(root).NextLevel == 5)
            {
                this.NextLevelText.text = "5";
                this.levelname_txt.text = "Jumper";
            };
            if (MovieClip(root).NextLevel == 6)
            {
                this.NextLevelText.text = "6";
                this.levelname_txt.text = "Skydiver";
            };
            if (MovieClip(root).NextLevel == 7)
            {
                this.NextLevelText.text = "7";
                this.levelname_txt.text = "Skilled";
            };
            if (MovieClip(root).NextLevel == 8)
            {
                this.NextLevelText.text = "8";
                this.levelname_txt.text = "Skilled";
            };
            if (MovieClip(root).NextLevel == 9)
            {
                this.NextLevelText.text = "9";
                this.levelname_txt.text = "Pro";
            };
            if (MovieClip(root).NextLevel == 10)
            {
                this.NextLevelText.text = "10";
                this.levelname_txt.text = "Addict";
            };
            if (MovieClip(root).NextLevel == 11)
            {
                this.NextLevelText.text = "11";
                this.levelname_txt.text = "Master";
            };
            if (MovieClip(root).NextLevel == 12)
            {
                this.NextLevelText.text = "12";
                this.levelname_txt.text = "Expert";
            };
            if (MovieClip(root).NextLevel == 13)
            {
                this.NextLevelText.text = "13";
                this.levelname_txt.text = ((("R" + "oc") + "ks") + "tar");
            };
            if (MovieClip(root).NextLevel == 14)
            {
                this.NextLevelText.text = "14";
                this.levelname_txt.text = ((("Ch" + "am") + "pi") + "on");
            };
            if (MovieClip(root).NextLevel == 15)
            {
                this.NextLevelText.text = "15";
                this.levelname_txt.text = (("Ki" + "n") + "g");
            };
            if (MovieClip(root).NextLevel == 16)
            {
                this.NextLevelText.text = "16";
                this.levelname_txt.text = (("An" + "g") + "el");
            };
            if (MovieClip(root).NextLevel == 17)
            {
                this.NextLevelText.text = "17";
                this.levelname_txt.text = (("Pw" + "n") + "er");
            };
            if (MovieClip(root).NextLevel == 18)
            {
                this.NextLevelText.text = "18";
                this.levelname_txt.text = (((("Fa" + "m") + "o") + "u") + "s");
            };
            if (MovieClip(root).NextLevel == 19)
            {
                this.NextLevelText.text = "19";
                this.levelname_txt.text = (((("Al" + "mo") + "st G") + "o") + "d");
            };
            if (MovieClip(root).NextLevel == 20)
            {
                this.NextLevelText.text = "20";
                this.levelname_txt.text = (("G" + "o") + "d");
            };
        }
        function frame1(){
            stop();
            MovieClip(root).loadLevelName();
            this.nextLevels();
        }

    }
}//package game_fla

