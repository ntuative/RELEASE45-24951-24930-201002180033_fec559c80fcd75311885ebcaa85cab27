package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1322:String;
      
      private var var_979:String;
      
      private var var_1824:Boolean;
      
      private var var_1485:int;
      
      private var var_1829:int;
      
      private var var_1826:Boolean;
      
      private var var_1642:String = "";
      
      private var var_1825:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1201:int;
      
      private var var_1827:Boolean;
      
      private var var_1657:int = -1;
      
      private var var_1828:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1829 = param1;
         var_979 = param2;
         _objId = param3;
         var_1201 = param4;
         _category = param5;
         var_1322 = param6;
         var_1824 = param7;
         var_1825 = param8;
         var_1827 = param9;
         var_1826 = param10;
         var_1828 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1642;
      }
      
      public function get extra() : int
      {
         return var_1485;
      }
      
      public function get classId() : int
      {
         return var_1201;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1826;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1824;
      }
      
      public function get stripId() : int
      {
         return var_1829;
      }
      
      public function get stuffData() : String
      {
         return var_1322;
      }
      
      public function get songId() : int
      {
         return var_1657;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1642 = param1;
         var_1485 = param2;
      }
      
      public function get itemType() : String
      {
         return var_979;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1828;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1827;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1825;
      }
   }
}
