package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1207:String = "";
      
      private var var_1208:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1208 = "";
         var_1207 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1207;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1208 = param1.readString();
         var_1207 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1208;
      }
   }
}
