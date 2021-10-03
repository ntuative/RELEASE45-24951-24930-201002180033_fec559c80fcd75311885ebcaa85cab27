package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_910:String = "select_outfit";
       
      
      private var var_1785:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_910);
         var_1785 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1785;
      }
   }
}
