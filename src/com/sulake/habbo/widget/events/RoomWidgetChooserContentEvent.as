package com.sulake.habbo.widget.events
{
   public class RoomWidgetChooserContentEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_569:String = "RWCCE_USER_CHOOSER_CONTENT";
      
      public static const const_650:String = "RWCCE_FURNI_CHOOSER_CONTENT";
       
      
      private var _items:Array;
      
      private var var_1907:Boolean;
      
      public function RoomWidgetChooserContentEvent(param1:String, param2:Array, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         _items = param2.slice();
         var_1907 = param3;
      }
      
      public function get items() : Array
      {
         return _items;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return var_1907;
      }
   }
}
