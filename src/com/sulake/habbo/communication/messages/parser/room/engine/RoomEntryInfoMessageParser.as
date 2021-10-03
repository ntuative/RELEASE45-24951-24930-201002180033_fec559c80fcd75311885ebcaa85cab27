package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1956:int;
      
      private var var_392:Boolean;
      
      private var var_1957:Boolean;
      
      private var var_773:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1957 = param1.readBoolean();
         if(var_1957)
         {
            var_1956 = param1.readInteger();
            var_392 = param1.readBoolean();
         }
         else
         {
            var_773 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_773 != null)
         {
            var_773.dispose();
            var_773 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1956;
      }
      
      public function get owner() : Boolean
      {
         return var_392;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1957;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_773;
      }
   }
}
