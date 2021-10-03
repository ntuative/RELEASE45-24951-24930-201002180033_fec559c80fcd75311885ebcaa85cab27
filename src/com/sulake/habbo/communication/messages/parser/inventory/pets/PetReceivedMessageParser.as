package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_960:PetData;
      
      private var var_1409:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1409 = param1.readBoolean();
         var_960 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1409 + ", " + var_960.id + ", " + var_960.name + ", " + pet.figure + ", " + var_960.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1409;
      }
      
      public function get pet() : PetData
      {
         return var_960;
      }
   }
}
