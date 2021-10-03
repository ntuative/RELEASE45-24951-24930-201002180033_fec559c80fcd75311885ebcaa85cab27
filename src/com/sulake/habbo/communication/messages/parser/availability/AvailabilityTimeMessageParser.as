package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_924:Boolean;
      
      private var var_1136:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_924 = param1.readInteger() > 0;
         var_1136 = param1.readInteger();
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_924;
      }
      
      public function flush() : Boolean
      {
         var_924 = false;
         var_1136 = 0;
         return true;
      }
      
      public function get minutesUntilChange() : int
      {
         return var_1136;
      }
   }
}
