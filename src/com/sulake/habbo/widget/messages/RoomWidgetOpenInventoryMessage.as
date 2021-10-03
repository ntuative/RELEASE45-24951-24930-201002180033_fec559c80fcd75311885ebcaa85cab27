package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_894:String = "inventory_badges";
      
      public static const const_1195:String = "inventory_clothes";
      
      public static const const_1294:String = "inventory_furniture";
      
      public static const const_582:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_855:String = "inventory_effects";
       
      
      private var var_1819:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_582);
         var_1819 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1819;
      }
   }
}
