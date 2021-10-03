package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_105:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1767:int;
      
      private var var_391:int;
      
      private var var_695:RoomData;
      
      private var var_1650:int;
      
      private var _ownerName:String;
      
      private var var_2194:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_391 = param1.readInteger();
         var_1767 = param1.readInteger();
         var_2194 = param1.readBoolean();
         var_1650 = param1.readInteger();
         _ownerName = param1.readString();
         var_105 = new RoomData(param1);
         var_695 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1767;
      }
      
      public function get event() : RoomData
      {
         return var_695;
      }
      
      public function get room() : RoomData
      {
         return var_105;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_105 != null)
         {
            var_105.dispose();
            var_105 = null;
         }
         if(var_695 != null)
         {
            var_695.dispose();
            var_695 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get ownerId() : int
      {
         return var_1650;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2194;
      }
   }
}
