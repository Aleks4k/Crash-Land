// Decompiled by AS3 Sorcerer 2.72
// http://www.as3sorcerer.com/

//buyPrem

package {
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.text.TextField;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class buyPrem extends MovieClip {

        public var buy_btn:SimpleButton;
        public var desc_txt:TextField;
        public var i_d:MovieClip;
        public var name_txt:TextField;
        public var bg:MovieClip;
        public var price_txt:TextField;
        var _itemKey:String = "none";
        var _price = 999;
        var _dsc:String = "";
        var _pr:String = "";
        var _func:Function;

        public function buyPrem(_arg_1:String, _arg_2:int, _arg_3:String, _arg_4:String, _arg_5:Function){
            this._itemKey = _arg_1;
            this._price = _arg_2;
            this._func = _arg_5;
            this._pr = _arg_4;
            this._dsc = _arg_3;
            addEventListener(Event.ADDED_TO_STAGE, this.onAdded);
       
	   
	   
	   }
        public function onAdded(ev:*){
            if (this._itemKey == "donator")
            {
                this.i_d.scaleX = (this.i_d.scaleY = 0.65);
            };
            if (this._itemKey == "Sunset")
            {
                this.i_d.scaleX = (this.i_d.scaleY = 0.65);
            };
            this.name_txt.text = this._itemKey;
            this.desc_txt.text = this._dsc;
            this.i_d.gotoAndStop(this._itemKey);
            this.price_txt.text = this._pr;
            this.buy_btn.addEventListener(MouseEvent.CLICK, function (_arg_1:*){
				_func(_itemKey);
            });
        }

    }
}//package 

