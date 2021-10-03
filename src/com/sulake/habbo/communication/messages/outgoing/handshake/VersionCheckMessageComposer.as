package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2126:String;
      
      private var var_1140:String;
      
      private var var_2125:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2125 = param1;
         var_1140 = param2;
         var_2126 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2125,var_1140,var_2126];
      }
      
      public function dispose() : void
      {
      }
   }
}
