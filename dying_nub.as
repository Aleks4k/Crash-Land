package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class dying_nub extends MovieClip
   {
       
      
      public var part1:MovieClip;
      
      public var head:MovieClip;
      
      public var part2:MovieClip;
      
      public var part7:MovieClip;
      
      public var part8:MovieClip;
      
      public var parts:Array;
      
      public var pobjs:Array;
      
      public function dying_nub()
      {
         this.parts = [];
         this.pobjs = [];
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAdded);
      }
      
      function generatenabobjs() : *
      {
         var nabxdxd:* = undefined;
         var pobj:Object = null;
         var fakdis:* = 0;
         while(fakdis < numChildren)
         {
            this.parts.push(getChildAt(fakdis));
            fakdis++;
         }
         var nab:* = 0;
         while(nab < this.parts.length)
         {
            pobj = new Object();
            pobj.rangle = Math.random() * 180 % 360;
            pobj.anglexd = pobj.rangle * Math.PI / 180;
            pobj.speedxd = Math.random() * 4 + 4;
            this.pobjs[nab] = pobj;
            nab++;
         }
         for each(nabxdxd in this.parts)
         {
         }
         addEventListener(Event.ENTER_FRAME,this.onFrame);
         setTimeout(function():*
         {
            removeEventListener(Event.ENTER_FRAME,onFrame);
         },20000);
      }
      
      function onAdded(param1:*) : *
      {
         this.generatenabobjs();
      }
      
      function onFrame(param1:*) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:bloodspot = null;
         var _loc2_:* = 0;
         while(_loc2_ < this.parts.length)
         {
            _loc3_ = this.pobjs[_loc2_];
            _loc3_.rangle = _loc3_.rangle - (_loc3_.rangle - 90) / 50;
            _loc3_.anglexd = _loc3_.rangle * Math.PI / 180;
            _loc4_ = this.parts[_loc2_];
            _loc4_.x = _loc4_.x + _loc3_.speedxd * Math.cos(_loc3_.anglexd);
            _loc4_.y = _loc4_.y + _loc3_.speedxd * Math.sin(_loc3_.anglexd);
            this.head.rotation++;
            this.part1.rotation++;
            this.part2.rotation++;
            this.part8.rotation++;
            this.part7.rotation++;
            _loc5_ = new bloodspot();
            _loc5_.x = _loc4_.x;
            _loc5_.y = _loc4_.y;
            if(Math.random() * 2 > 1)
            {
               addChild(_loc5_);
            }
            _loc2_++;
         }
      }
   }
}
