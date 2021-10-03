package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1786:int;
      
      private var var_1207:String;
      
      private var var_1790:int;
      
      private var var_1789:int;
      
      private var var_1788:int;
      
      private var var_1787:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1207;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1787;
      }
      
      public function get responseType() : int
      {
         return var_1789;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1790;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1207 = param1.readString();
         var_1790 = param1.readInteger();
         var_1786 = param1.readInteger();
         var_1788 = param1.readInteger();
         var_1789 = param1.readInteger();
         var_1787 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1786;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1788;
      }
   }
}
