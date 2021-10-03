package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_209:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2150:Boolean = false;
      
      private var var_2149:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_2148:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_209,param5,param6);
         var_2148 = param1;
         var_2147 = param2;
         var_2149 = param3;
         var_2150 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2149;
      }
      
      public function get periodsLeft() : int
      {
         return var_2147;
      }
      
      public function get daysLeft() : int
      {
         return var_2148;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2150;
      }
   }
}
