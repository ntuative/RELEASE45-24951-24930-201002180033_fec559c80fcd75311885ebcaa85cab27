package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1274:int;
      
      private var var_1489:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1274 = param1;
         var_1489 = param2;
         Logger.log("READ NODE: " + var_1274 + ", " + var_1489);
      }
      
      public function get nodeName() : String
      {
         return var_1489;
      }
      
      public function get nodeId() : int
      {
         return var_1274;
      }
   }
}
