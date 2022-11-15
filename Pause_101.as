package
{
   import flash.display.MovieClip;
   
   public dynamic class Pause_101 extends MovieClip
   {
       
      
      public function Pause_101()
      {
         super();
         addFrameScript(6,this.frame7);
      }
      
      function frame7() : *
      {
         stop();
      }
   }
}
