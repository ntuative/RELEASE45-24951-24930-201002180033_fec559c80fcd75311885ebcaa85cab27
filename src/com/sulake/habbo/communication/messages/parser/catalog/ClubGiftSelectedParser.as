package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_1878:String;
      
      private var var_783:String;
      
      private var var_1068:int;
      
      private var var_1201:int;
      
      private var var_1168:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get classId() : int
      {
         return var_1201;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1168 = param1.readString();
         var_1878 = param1.readString();
         var_1201 = param1.readInteger();
         var_783 = param1.readString();
         var_1068 = param1.readInteger();
         return true;
      }
      
      public function get contentType() : String
      {
         return var_1878;
      }
      
      public function get productCode() : String
      {
         return var_1168;
      }
   }
}
