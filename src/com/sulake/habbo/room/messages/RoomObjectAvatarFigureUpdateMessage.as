package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1705:String;
      
      private var var_560:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_560 = param1;
         var_1705 = param2;
      }
      
      public function get race() : String
      {
         return var_1705;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
   }
}
