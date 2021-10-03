package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserTagsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWUTUE_USER_TAGS";
       
      
      private var _userId:int;
      
      private var var_593:Array;
      
      private var var_1711:Boolean;
      
      public function RoomWidgetUserTagsUpdateEvent(param1:int, param2:Array, param3:Boolean, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_120,param4,param5);
         _userId = param1;
         var_593 = param2;
         var_1711 = param3;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get tags() : Array
      {
         return var_593;
      }
      
      public function get isOwnUser() : Boolean
      {
         return var_1711;
      }
   }
}
