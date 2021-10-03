package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1421:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1583:String = "ROE_MOUSE_ENTER";
      
      public static const const_434:String = "ROE_MOUSE_MOVE";
      
      public static const const_1510:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_193:String = "ROE_MOUSE_CLICK";
      
      public static const const_446:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1581:Boolean;
      
      private var var_1582:Boolean;
      
      private var var_1574:Boolean;
      
      private var var_1578:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1574 = param4;
         var_1578 = param5;
         var_1581 = param6;
         var_1582 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1582;
      }
      
      public function get altKey() : Boolean
      {
         return var_1574;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1578;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1581;
      }
   }
}
