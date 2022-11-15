package
{
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.events.MouseEvent;
    import flash.utils.setTimeout;
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

    public dynamic class deathStuff_89 extends MovieClip {

        public var NextLevelStats:MovieClip;
        public var again_btn:SimpleButton;
        public var score_txt:MovieClip;
        public var highscore_txt:MovieClip;
        public var levelup:MovieClip;
        public var highscore_tab:MovieClip;
        public var plusxp:MovieClip;
        public var back_btns:SimpleButton;

        public function deathStuff_89(){
            addFrameScript(0, this.frame1, 16, this.frame17, 28, this.frame29, 33, this.frame34);
        }
        public function checklevelup(){
            if (this.NextLevelStats.currentFrame == 1)
            {
                this.NextLevelStats.XPText.text = ((((" " + MovieClip(root).user.CurrentXP) + " of ") + MovieClip(root).user.XPToNextLevel) + " XP ");
            };
            if (MovieClip(root).user.CurrentXP > MovieClip(root).user.XPToNextLevel)
            {
                if (MovieClip(root).user.CurrentLevel != 20)
                {
                    this.levelup.visible = true;
                    this.levelup.gotoAndPlay((((((("l" + "e") + "v") + "e") + "l") + "u") + "p"));
                    MovieClip(root).user.CurrentLevel = (MovieClip(root).user.CurrentLevel + 1);
                    MovieClip(root).user.XPToNextLevel = (MovieClip(root).user.XPToNextLevel * 1);
                    MovieClip(root).user.XPToNextLevel = (MovieClip(root).user.XPToNextLevel + 40);
					MovieClip(root).TheConnection.send("idkrly", "levelup");
                    MovieClip(root).loadLevelName();
                    this.NextLevelStats.nextLevels();
                };
            };
        }
        function frame1(){
            stop();
        }
        function frame17(){
            this.score_txt.score_txt.text = MovieClip(root).score;
        }
        function frame29(){
            this.highscore_txt.highscore_txt.text = (MovieClip(root).user.highscore + "");
            this.again_btn.addEventListener(MouseEvent.CLICK, MovieClip(root).restart);
        }
        function frame34(){
            //MovieClip(root).showSC();
            MovieClip(root).canRestart = true;
            if (MovieClip(root).user.CurrentLevel == 20)
            {
                //MovieClip(root).addAchievement("Leveler");
                this.NextLevelStats.gotoAndStop(2);
            };
            if (this.NextLevelStats.currentFrame == 1)
            {
                this.NextLevelStats.XPText.text = ((((" " + MovieClip(root).user.CurrentXP) + " of ") + MovieClip(root).user.XPToNextLevel) + " XP ");
            };
            this.checklevelup();
            stop();
            if (MovieClip(root).user.highscore < MovieClip(root).score)
            {
                setTimeout(MovieClip(root).showHighscore, 1000);
				MovieClip(root).user.highscore = MovieClip(root).score;
                var scoree:* = MovieClip(root).score.toString();
                MovieClip(root).TheConnection.send("idkrly", "newhsc", scoree);
            };
            if (MovieClip(root).CurrentXP_text >= 1)
            {
                this.plusxp.inner.gotoAndPlay(1);
                this.plusxp.inner.haveGet_txt.text = (("+" + MovieClip(root).CurrentXP_text) + " XP ");
            };
            this.back_btns.addEventListener(MouseEvent.CLICK, MovieClip(root).gotoMenu);
        }

    }
}//package game_fla

