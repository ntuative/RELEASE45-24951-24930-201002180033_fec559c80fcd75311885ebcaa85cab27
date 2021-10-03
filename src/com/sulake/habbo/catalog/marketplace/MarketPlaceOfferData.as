package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1706:int;
      
      private var var_1131:int;
      
      private var var_1710:int;
      
      private var var_1707:int = -1;
      
      private var var_348:int;
      
      private var var_1709:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1130:int;
      
      private var var_1708:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1708 = param2;
         var_1709 = param3;
         var_1131 = param4;
         var_348 = param5;
         var_1710 = param6;
         var_1130 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1706 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1706;
      }
      
      public function get price() : int
      {
         return var_1131;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1707;
      }
      
      public function get offerCount() : int
      {
         return var_1130;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1709;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1707 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1131 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1130 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_348;
      }
      
      public function get averagePrice() : int
      {
         return var_1710;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1708;
      }
   }
}
