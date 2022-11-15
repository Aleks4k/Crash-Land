package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class playTab extends MovieClip
   {
       
      
      public var multiplayer_btn:SimpleButton;
	  public var overlay:MovieClip;
      
      public var singleplayer_btn:SimpleButton;
      
      public var close_btn:SimpleButton;
      
      public function playTab()
      {
         super();
         addFrameScript(0,this.frame1);
	  }
      
      public function close(param1:*) : *
      {
         parent.removeChild(this);
      }
      
      function frame1() : *
      {
         this.singleplayer_btn.addEventListener(MouseEvent.CLICK,MovieClip(root).gotoGame);
         //this.multiplayer_btn.addEventListener(MouseEvent.CLICK,MovieClip(root).goMultiplayer);
         this.close_btn.addEventListener(MouseEvent.CLICK,this.close);
      }
   }
}
