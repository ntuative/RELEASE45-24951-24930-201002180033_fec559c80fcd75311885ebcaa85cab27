package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1582:Boolean = false;
      
      private var var_1574:Boolean = false;
      
      private var var_1579:String = "";
      
      private var _type:String = "";
      
      private var var_1581:Boolean = false;
      
      private var var_1577:Number = 0;
      
      private var var_1580:Number = 0;
      
      private var var_1576:Number = 0;
      
      private var var_1575:String = "";
      
      private var var_1583:Number = 0;
      
      private var var_1578:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1575 = param2;
         var_1579 = param3;
         var_1580 = param4;
         var_1576 = param5;
         var_1577 = param6;
         var_1583 = param7;
         var_1578 = param8;
         var_1574 = param9;
         var_1581 = param10;
         var_1582 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1578;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1582;
      }
      
      public function get localX() : Number
      {
         return var_1577;
      }
      
      public function get localY() : Number
      {
         return var_1583;
      }
      
      public function get canvasId() : String
      {
         return var_1575;
      }
      
      public function get altKey() : Boolean
      {
         return var_1574;
      }
      
      public function get spriteTag() : String
      {
         return var_1579;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1580;
      }
      
      public function get screenY() : Number
      {
         return var_1576;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1581;
      }
   }
}
