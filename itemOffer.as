package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class itemOffer extends MovieClip
   {
       
      public var nameIs:TextField;
      
      public var item:itemActual;
      
      public var ov:MovieClip;
      
      public var btn:SimpleButton;
      
      public function itemOffer(param1:*)
      {
         var my_array:Array = null;
         var pName:* = param1;
         //var clientis:* = param2;
         super();
         var my_str:String = new String(pName);
         my_array = my_str.split(";");
         trace("Name:" + my_array[0] + "... Offer: " + my_array[1] + "... ID: " + my_array[2] + "     Closed = " + my_array[3] + "  available = " + my_array[4]);
         this.nameIs.text = my_array[0];	
		 this.ov.gotoAndStop(my_array[3]);
		 if (this.ov.currentFrame == 1)
            {
                this.ov.takenBY.text = (my_array[4] + " is here");
            };
		 //this.closed.takenBY.text = (this.pName + "\nis here");
         this.item.gotoAndStop(my_array[1]);
         if(my_array[3] == 2)
         {
			this.btn.addEventListener(MouseEvent.CLICK,function():*
            {
               MovieClip(root).openUser(my_array[0],my_array[1],my_array[2], my_array[3]);
            });
         }
         else
         {
            this.btn.addEventListener(MouseEvent.CLICK,function():*
            {
               MovieClip(root).alert("Someone else is on user\'s offer");
            });
         }
      }
   }
}
