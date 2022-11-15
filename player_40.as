package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class player_40 extends MovieClip
   {
       
      
      public var Player:MovieClip;
      
      public var supermagnet_effect:MovieClip;
      
      public var name_txt:TextField;
      
      public var magnet_effect:MovieClip;
      
      public function player_40()
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
