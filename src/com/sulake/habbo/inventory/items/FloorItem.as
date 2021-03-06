package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2238:Boolean;
      
      protected var var_1485:Number;
      
      protected var var_2237:Boolean;
      
      protected var _type:int;
      
      protected var var_2236:Boolean;
      
      protected var var_1657:int;
      
      protected var var_2235:Boolean;
      
      protected var var_1322:String;
      
      protected var var_2107:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1642:String;
      
      protected var var_2106:Boolean;
      
      protected var _category:int;
      
      protected var var_2109:int;
      
      protected var var_2249:int;
      
      protected var var_2108:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2106 = param5;
         var_2235 = param6;
         var_2238 = param7;
         var_2237 = param8;
         var_1322 = param9;
         var_1485 = param10;
         var_2249 = param11;
         var_2108 = param12;
         var_2109 = param13;
         var_2107 = param14;
         var_1642 = param15;
         var_1657 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2236;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1485;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2236 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1657;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2237;
      }
      
      public function get slotId() : String
      {
         return var_1642;
      }
      
      public function get expires() : int
      {
         return var_2249;
      }
      
      public function get creationYear() : int
      {
         return var_2107;
      }
      
      public function get creationDay() : int
      {
         return var_2108;
      }
      
      public function get stuffData() : String
      {
         return var_1322;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2235;
      }
      
      public function get groupable() : Boolean
      {
         return var_2106;
      }
      
      public function get creationMonth() : int
      {
         return var_2109;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2238;
      }
   }
}
