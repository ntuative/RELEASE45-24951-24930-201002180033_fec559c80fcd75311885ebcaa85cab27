package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1551:int = 2;
      
      public static const const_1549:int = 1;
      
      public static const const_1451:int = 0;
       
      
      private var var_1131:int;
      
      private var var_348:int;
      
      private var var_2345:int;
      
      private var _offerId:int;
      
      private var var_1709:int;
      
      private var var_1708:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1708 = param2;
         var_1709 = param3;
         var_1131 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1708;
      }
      
      public function get furniType() : int
      {
         return var_1709;
      }
      
      public function get price() : int
      {
         return var_1131;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
