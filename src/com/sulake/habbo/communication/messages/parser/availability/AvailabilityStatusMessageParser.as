package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_924:Boolean;
      
      private var var_1189:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_924 = param1.readInteger() > 0;
         var_1189 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_924;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1189;
      }
      
      public function flush() : Boolean
      {
         var_924 = false;
         var_1189 = false;
         return true;
      }
   }
}
