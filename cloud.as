package
{
   import flash.display.MovieClip;
   
   public dynamic class cloud extends MovieClip
   {
       
      
      public function cloud()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
