package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1044:int;
      
      private var var_2024:int;
      
      private var var_1454:int;
      
      private var var_105:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1454 = param1.readInteger();
         var_2024 = param1.readInteger();
         var_1044 = param1.readInteger();
         var_105 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1454);
      }
      
      public function get reportedUserId() : int
      {
         return var_1044;
      }
      
      public function get callerUserId() : int
      {
         return var_2024;
      }
      
      public function get callId() : int
      {
         return var_1454;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_105;
      }
   }
}
