package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1131:int;
      
      private var var_1707:int = -1;
      
      private var var_348:int;
      
      private var var_1710:int;
      
      private var var_1709:int;
      
      private var _offerId:int;
      
      private var var_1130:int;
      
      private var var_1708:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1708 = param2;
         var_1709 = param3;
         var_1131 = param4;
         var_348 = param5;
         var_1707 = param6;
         var_1710 = param7;
         var_1130 = param8;
      }
      
      public function get status() : int
      {
         return var_348;
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
      
      public function get averagePrice() : int
      {
         return var_1710;
      }
      
      public function get furniId() : int
      {
         return var_1708;
      }
   }
}
