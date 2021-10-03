package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1692:int;
      
      private var var_1693:String;
      
      private var var_1164:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1164 = param1.readInteger();
         this.var_1693 = param1.readString();
         this.var_1692 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1164;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1692;
      }
      
      public function get requesterName() : String
      {
         return this.var_1693;
      }
   }
}
