package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1729:int;
      
      private var var_1483:int;
      
      private var var_1726:int;
      
      private var var_1728:int;
      
      private var var_1727:int;
      
      private var var_1484:int;
      
      private var var_1725:int;
      
      private var var_1724:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1729;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1483;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1725;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1728;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1727;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1484;
      }
      
      public function get commission() : int
      {
         return var_1726;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1724 = param1.readBoolean();
         var_1726 = param1.readInteger();
         var_1483 = param1.readInteger();
         var_1484 = param1.readInteger();
         var_1728 = param1.readInteger();
         var_1729 = param1.readInteger();
         var_1727 = param1.readInteger();
         var_1725 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1724;
      }
   }
}
