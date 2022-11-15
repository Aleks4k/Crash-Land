package
{
   import caurina.transitions.Tweener;
   import com.freeactionscript.Scrollbar;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class coins_n_shop_mc extends MovieClip
   {
       
      
      public var ov:MovieClip;
      
      public var cont:MovieClip;
      
      public var cantsell_ov:MovieClip;
      
      public var msk:MovieClip;
      
      public var close_btn:SimpleButton;
      
      public var busy:Boolean;
      
      public var sd:Object;
      
      public var pad:MovieClip;
      
      public var scbar:Scrollbar;
      
      public var bar:MovieClip;
      
      public var citemD:Object;
      
      public var code_tryied_failed:Boolean;
      
      public function coins_n_shop_mc()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function clmwdn(event:MouseEvent) : *
      {
         if(this.busy)
         {
            return;
         }
         MovieClip(parent).removeChild(this);
      }
      
      public function setup(param1:Object) : *
      {
         this.ov.visible = false;
         this.cantsell_ov.gotoAndStop(1);
         this.cantsell_ov.visible = true;
         scaleX = 0.3;
         scaleY = 0.3;
         Tweener.addTween(this,{
            "scaleX":1,
            "scaleY":1,
            "time":0.4,
            "transition":"easeOutBack"
         });
         this.sd = param1;
         if(param1.level == 30)
         {
            this.cantsell_ov.visible = false;
         }
         this.setupShopItems(MovieClip(root).shopItemsArray);
      }
      
      public function buyItem(param1:Object) : *
      {
         if(MovieClip(root).TheClient.payVault.coins < param1.price)
         {
            MovieClip(root).alert("Not enough coins!");
         }
         else
         {
            this.citemD = param1;
            MovieClip(root).buyItem(param1.n,param1.price);
            this.ov.visible = true;
         }
         this.ov.visible = false;
         this.citemD.mvc.gotoAndStop(2);
         this.citemD.mvc.name_txt.text = this.citemD.mvc.n;
         MovieClip(root).refreshIt();
      }
      
      public function setupShopItems(param1:Array) : *
      {
         this.msk.mouseEnabled = false;
         var _loc_3:* = null;
         var _loc_2:* = 0;
         while(_loc_2 < param1.length)
         {
            _loc_3 = new shop_item_disp();
            _loc_3.y = _loc_2 * (_loc_3.height + 3) + 3;
            this.cont.addChild(_loc_3);
            this.scbar.init(this.cont,this.msk,this.pad,this.bar);
            if(!MovieClip(root).findItem(param1[_loc_2].n))
            {
               _loc_3.gotoAndStop(1);
               _loc_3.price_txt.text = param1[_loc_2].price;
               _loc_3.buy_btn.addEventListener(MouseEvent.CLICK,this.buy_item_click);
            }
            else
            {
               _loc_3.gotoAndStop(2);
            }
            _loc_3.n = param1[_loc_2].mc;
            _loc_3.itm = param1[_loc_2].n;
            _loc_3.price = param1[_loc_2].price;
            _loc_3.disp.gotoAndStop(param1[_loc_2].n);
            _loc_3.name_txt.text = param1[_loc_2].mc;
            _loc_2 = _loc_2 + 1;
         }
      }
      
      public function buy_item_click(event:MouseEvent) : *
      {
         this.buyItem({
            "n":event.currentTarget.parent.itm,
            "price":event.currentTarget.parent.price,
            "mvc":event.currentTarget.parent
         });
      }
      
      function frame1() : *
      {
         this.busy = false;
         this.scbar = new Scrollbar();
         this.close_btn.addEventListener(MouseEvent.MOUSE_DOWN,this.clmwdn);
         this.code_tryied_failed = false;
         this.ov.visible = false;
         this.msk.mouseEnabled = false;
      }
   }
}
