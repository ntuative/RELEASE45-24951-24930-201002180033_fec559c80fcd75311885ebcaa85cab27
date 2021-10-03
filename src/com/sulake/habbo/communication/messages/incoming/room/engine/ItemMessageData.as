package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_80:Number = 0;
      
      private var _data:String = "";
      
      private var var_1485:int = 0;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2230:Boolean = false;
      
      private var var_2344:String = "";
      
      private var _id:int = 0;
      
      private var var_184:Boolean = false;
      
      private var var_214:String = "";
      
      private var var_2231:int = 0;
      
      private var var_2232:int = 0;
      
      private var var_1577:int = 0;
      
      private var var_1583:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2230 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2230;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_184)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_214;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_184)
         {
            var_1577 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_184)
         {
            var_2231 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_184)
         {
            var_2232 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_184)
         {
            var_214 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_184)
         {
            var_1583 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_184)
         {
            var_31 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1577;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_184)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2231;
      }
      
      public function get wallY() : Number
      {
         return var_2232;
      }
      
      public function get localY() : Number
      {
         return var_1583;
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_80 = param1;
         }
      }
   }
}
