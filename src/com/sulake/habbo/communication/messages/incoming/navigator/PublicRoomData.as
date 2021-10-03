package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1752:int;
      
      private var var_1756:String;
      
      private var var_1755:int;
      
      private var _disposed:Boolean;
      
      private var var_1754:int;
      
      private var var_1753:String;
      
      private var var_1274:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1753 = param1.readString();
         var_1752 = param1.readInteger();
         var_1755 = param1.readInteger();
         var_1756 = param1.readString();
         var_1754 = param1.readInteger();
         var_1274 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1754;
      }
      
      public function get worldId() : int
      {
         return var_1755;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1753;
      }
      
      public function get unitPort() : int
      {
         return var_1752;
      }
      
      public function get castLibs() : String
      {
         return var_1756;
      }
      
      public function get nodeId() : int
      {
         return var_1274;
      }
   }
}
