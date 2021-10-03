package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_979:String;
      
      private var var_1640:int;
      
      private var var_2111:int;
      
      private var var_1485:int;
      
      private var var_2107:int;
      
      private var _category:int;
      
      private var var_2355:int;
      
      private var var_2108:int;
      
      private var var_2112:int;
      
      private var var_2110:int;
      
      private var var_2109:int;
      
      private var var_2106:Boolean;
      
      private var var_1322:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1640 = param1;
         var_979 = param2;
         var_2111 = param3;
         var_2110 = param4;
         _category = param5;
         var_1322 = param6;
         var_1485 = param7;
         var_2112 = param8;
         var_2108 = param9;
         var_2109 = param10;
         var_2107 = param11;
         var_2106 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2110;
      }
      
      public function get extra() : int
      {
         return var_1485;
      }
      
      public function get stuffData() : String
      {
         return var_1322;
      }
      
      public function get groupable() : Boolean
      {
         return var_2106;
      }
      
      public function get creationMonth() : int
      {
         return var_2109;
      }
      
      public function get roomItemID() : int
      {
         return var_2111;
      }
      
      public function get itemType() : String
      {
         return var_979;
      }
      
      public function get itemID() : int
      {
         return var_1640;
      }
      
      public function get songID() : int
      {
         return var_1485;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2112;
      }
      
      public function get creationYear() : int
      {
         return var_2107;
      }
      
      public function get creationDay() : int
      {
         return var_2108;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
