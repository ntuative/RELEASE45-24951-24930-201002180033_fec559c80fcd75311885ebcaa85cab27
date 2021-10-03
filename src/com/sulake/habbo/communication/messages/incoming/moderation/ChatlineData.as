package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1458:String;
      
      private var var_2057:int;
      
      private var var_2059:int;
      
      private var var_2060:int;
      
      private var var_2058:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2057 = param1.readInteger();
         var_2060 = param1.readInteger();
         var_2059 = param1.readInteger();
         var_2058 = param1.readString();
         var_1458 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1458;
      }
      
      public function get hour() : int
      {
         return var_2057;
      }
      
      public function get minute() : int
      {
         return var_2060;
      }
      
      public function get chatterName() : String
      {
         return var_2058;
      }
      
      public function get chatterId() : int
      {
         return var_2059;
      }
   }
}
