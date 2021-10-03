package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1648:int;
      
      private var var_1082:PetData;
      
      private var var_1990:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1648;
      }
      
      public function get petData() : PetData
      {
         return var_1082;
      }
      
      public function flush() : Boolean
      {
         var_1082 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1990;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1648 = param1.readInteger();
         var_1990 = param1.readInteger();
         var_1082 = new PetData(param1);
         return true;
      }
   }
}
