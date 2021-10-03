package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1645:int;
      
      private var var_560:String;
      
      private var var_1588:int;
      
      private var var_1648:int;
      
      private var var_1649:int;
      
      private var var_1791:int;
      
      private var _nutrition:int;
      
      private var var_1115:int;
      
      private var var_1792:int;
      
      private var var_1793:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1650:int;
      
      private var var_1794:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1588;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1791;
      }
      
      public function flush() : Boolean
      {
         var_1115 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1792;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1793;
      }
      
      public function get maxNutrition() : int
      {
         return var_1794;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1648;
      }
      
      public function get petId() : int
      {
         return var_1115;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1115 = param1.readInteger();
         _name = param1.readString();
         var_1588 = param1.readInteger();
         var_1792 = param1.readInteger();
         var_1649 = param1.readInteger();
         var_1793 = param1.readInteger();
         _energy = param1.readInteger();
         var_1791 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1794 = param1.readInteger();
         var_560 = param1.readString();
         var_1648 = param1.readInteger();
         var_1650 = param1.readInteger();
         var_1645 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1649;
      }
      
      public function get ownerId() : int
      {
         return var_1650;
      }
      
      public function get age() : int
      {
         return var_1645;
      }
   }
}
