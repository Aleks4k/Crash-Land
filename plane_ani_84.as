package
{
   import flash.display.MovieClip;
   
   public dynamic class plane_ani_84 extends MovieClip
   {
      
      public function plane_ani_84()
      {
         super();
         addFrameScript(68,this.frame69,69,this.frame70,85,this.frame86,118,this.frame119);
      }
      
      function frame119() : *
      {
         stop();
         MovieClip(root).onPlayerSpawn();
      }
   }
}
