package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_979:int;
      
      private var var_1196:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_979 = param1;
         var_1196 = param2;
      }
      
      public function get itemType() : int
      {
         return var_979;
      }
      
      public function get itemName() : String
      {
         return var_1196;
      }
   }
}
