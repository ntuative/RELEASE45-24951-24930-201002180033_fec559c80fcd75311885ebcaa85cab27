package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1346:String = "F";
      
      public static const const_819:String = "M";
       
      
      private var var_79:Number = 0;
      
      private var var_560:String = "";
      
      private var var_2038:int = 0;
      
      private var var_2036:String = "";
      
      private var var_2034:int = 0;
      
      private var var_1889:int = 0;
      
      private var var_2037:String = "";
      
      private var var_1293:String = "";
      
      private var _id:int = 0;
      
      private var var_184:Boolean = false;
      
      private var var_214:int = 0;
      
      private var var_2035:String = "";
      
      private var _name:String = "";
      
      private var var_1890:int = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_214;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_184)
         {
            var_214 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_184)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2038;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_184)
         {
            var_2034 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2035;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_184)
         {
            var_2037 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_184)
         {
            var_2035 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_184)
         {
            var_1889 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_184)
         {
            var_560 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_184)
         {
            var_2038 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_184)
         {
            var_1293 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2034;
      }
      
      public function get groupID() : String
      {
         return var_2037;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_184)
         {
            var_1890 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_184)
         {
            var_2036 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function get sex() : String
      {
         return var_1293;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
      
      public function get webID() : int
      {
         return var_1890;
      }
      
      public function get custom() : String
      {
         return var_2036;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_80 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_184)
         {
            var_79 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1889;
      }
   }
}
