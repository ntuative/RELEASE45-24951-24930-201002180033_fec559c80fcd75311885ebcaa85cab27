package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_905:int;
      
      private var var_1573:int;
      
      private var var_547:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_905;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1573;
      }
      
      public function flush() : Boolean
      {
         var_547 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_547;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1573 = param1.readInteger();
         var_905 = param1.readInteger();
         var_547 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_547.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
