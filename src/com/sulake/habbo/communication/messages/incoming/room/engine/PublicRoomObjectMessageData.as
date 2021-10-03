package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1036:int = 0;
      
      private var var_80:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_184:Boolean = false;
      
      private var var_214:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_79:Number = 0;
      
      private var var_1037:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_80 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1036;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_214;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_184)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_184)
         {
            var_214 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_184)
         {
            var_1036 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_184)
         {
            var_1037 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_184)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1037;
      }
   }
}
