package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_996:Boolean;
      
      private var var_994:Boolean;
      
      private var var_995:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_996;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_994;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_995 = param1.readBoolean();
         var_994 = param1.readBoolean();
         var_996 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_995;
      }
      
      public function flush() : Boolean
      {
         var_995 = false;
         var_994 = false;
         var_996 = false;
         return true;
      }
   }
}
