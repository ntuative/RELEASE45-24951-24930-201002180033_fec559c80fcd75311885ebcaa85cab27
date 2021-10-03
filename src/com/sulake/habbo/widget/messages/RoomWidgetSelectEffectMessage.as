package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_635:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_614:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_480:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_1736:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         var_1736 = param2;
      }
      
      public function get effectType() : int
      {
         return var_1736;
      }
   }
}
