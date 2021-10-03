package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_654:String;
      
      private var var_1845:int;
      
      private var var_1528:Boolean;
      
      private var _roomId:int;
      
      private var var_1846:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1528 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_654 = param1.readString();
         var_1846 = param1.readInteger();
         var_1845 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1528;
      }
      
      public function get roomName() : String
      {
         return var_654;
      }
      
      public function get enterMinute() : int
      {
         return var_1845;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1846;
      }
   }
}
