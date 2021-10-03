package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1037:int = 0;
      
      private var _data:String = "";
      
      private var var_1485:int = -1;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var var_1036:int = 0;
      
      private var var_2344:String = "";
      
      private var var_1828:int = 0;
      
      private var _id:int = 0;
      
      private var var_184:Boolean = false;
      
      private var var_214:int = 0;
      
      private var var_1875:String = null;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_184)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_214;
      }
      
      public function get extra() : int
      {
         return var_1485;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_184)
         {
            var_214 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_184)
         {
            var_79 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_184)
         {
            var_1485 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_184)
         {
            var_31 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1828;
      }
      
      public function get staticClass() : String
      {
         return var_1875;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_184)
         {
            var_1828 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_184)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_184)
         {
            var_1875 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_184)
         {
            var_1037 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_184)
         {
            var_1036 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_80 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1037;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get sizeY() : int
      {
         return var_1036;
      }
   }
}
