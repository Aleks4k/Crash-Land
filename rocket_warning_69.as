package
{
   import flash.display.MovieClip;
   
   public dynamic class rocket_warning_69 extends MovieClip
   {
       
      
      public function rocket_warning_69()
      {
         super();
         addFrameScript(1,this.frame2);
      }
      
      function frame2() : *
      {
         if(MovieClip(root).cRocketTime > 0)
         {
            MovieClip(root).alarmSound.play();
         }
      }
   }
}
