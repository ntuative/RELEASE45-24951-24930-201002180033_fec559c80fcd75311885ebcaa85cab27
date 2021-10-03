package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      private var var_214:int = 0;
      
      private var var_1991:int = 0;
      
      private var var_2129:Number = 0;
      
      private var var_2132:Number = 0;
      
      private var var_2128:Number = 0;
      
      private var var_2130:Number = 0;
      
      private var var_2131:Boolean = false;
      
      private var var_79:Number = 0;
      
      private var _id:int = 0;
      
      private var var_188:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_188 = [];
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_80 = param4;
         var_2130 = param5;
         var_214 = param6;
         var_1991 = param7;
         var_2129 = param8;
         var_2132 = param9;
         var_2128 = param10;
         var_2131 = param11;
         var_188 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get dir() : int
      {
         return var_214;
      }
      
      public function get localZ() : Number
      {
         return var_2130;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2131;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1991;
      }
      
      public function get targetX() : Number
      {
         return var_2129;
      }
      
      public function get targetY() : Number
      {
         return var_2132;
      }
      
      public function get targetZ() : Number
      {
         return var_2128;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get actions() : Array
      {
         return var_188.slice();
      }
   }
}
