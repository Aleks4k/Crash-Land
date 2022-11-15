package
{
   import flash.display.MovieClip;
   
   public dynamic class Bamm extends MovieClip
   {
       
      
      public function Bamm()
      {
         super();
         addFrameScript(21,this.frame22);
      }
      
      function frame22() : *
      {
         stop();
      }
   }
}
