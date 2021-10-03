package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1767:int;
      
      private var var_1766:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1766 = param1.readString();
         var_1767 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1766;
      }
      
      public function get userCount() : int
      {
         return var_1767;
      }
   }
}
