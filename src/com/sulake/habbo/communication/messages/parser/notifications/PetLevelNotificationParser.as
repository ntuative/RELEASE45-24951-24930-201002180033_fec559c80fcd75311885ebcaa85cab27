package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_560:String;
      
      private var var_1588:int;
      
      private var var_1972:String;
      
      private var var_1013:int;
      
      private var var_1115:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1115;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1115 = param1.readInteger();
         var_1972 = param1.readString();
         var_1588 = param1.readInteger();
         var_560 = param1.readString();
         var_1013 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1972;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
      
      public function get petType() : int
      {
         return var_1013;
      }
      
      public function get level() : int
      {
         return var_1588;
      }
   }
}
