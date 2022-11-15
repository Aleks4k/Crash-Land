package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class bloodspot extends MovieClip
   {
       
      
      var rangle:int;
      
      public function bloodspot()
      {
         this.rangle = Math.random() * 400;
         super();
         addFrameScript(0,this.frame1,30,this.frame31);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedxd);
      }
      
      public function playxd() : *
      {
         gotoAndPlay(2);
      }
      
      function onAddedxd(param1:*) : *
      {
         rotation = Math.random() * 3600;
         var _loc2_:Timer = new Timer(30,30);
         _loc2_.addEventListener(TimerEvent.TIMER,this.timerListener);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.doneshiet);
         _loc2_.start();
         this.playxd();
      }
      
      function timerListener(param1:TimerEvent) : void
      {
         x = x + 1 * Math.cos(this.rangle * Math.PI / 180);
         y = y + 1 * Math.sin(this.rangle * Math.PI / 180);
      }
      
      function doneshiet(param1:* = null) : *
      {
         if(this.parent.alpha <= 1)
         {
            this.parent.removeChild(this.parent.getChildByName(this.name));
         }
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame31() : *
      {
         stop();
      }
   }
}
