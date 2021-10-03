package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1641:String;
      
      private var _gender:String;
      
      private var var_1642:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1642 = param1.readInteger();
         var_1641 = param1.readString();
         _gender = param1.readString();
      }
      
      public function get gender() : String
      {
         return _gender;
      }
      
      public function get figureString() : String
      {
         return var_1641;
      }
      
      public function get slotId() : int
      {
         return var_1642;
      }
   }
}
