package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class FlatCategory
   {
       
      
      private var var_1274:int;
      
      private var var_1489:String;
      
      public function FlatCategory()
      {
         super();
      }
      
      public function set nodeName(param1:String) : void
      {
         var_1489 = param1;
      }
      
      public function get nodeName() : String
      {
         return var_1489;
      }
      
      public function set nodeId(param1:int) : void
      {
         var_1274 = param1;
      }
      
      public function get nodeId() : int
      {
         return var_1274;
      }
   }
}
