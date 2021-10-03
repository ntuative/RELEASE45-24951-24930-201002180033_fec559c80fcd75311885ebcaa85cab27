package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1767:int;
      
      private var var_1683:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1683 = param1.readString();
         this.var_1767 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1767;
      }
      
      public function get tag() : String
      {
         return this.var_1683;
      }
   }
}
