package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2156:Number;
      
      private var var_572:Number = 0;
      
      private var var_2155:Number;
      
      private var var_573:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2156 = param1;
         var_2155 = param2;
      }
      
      public function update() : void
      {
         var_573 += var_2155;
         var_572 += var_573;
         if(var_572 > 0)
         {
            var_572 = 0;
            var_573 = var_2156 * -1 * var_573;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_573 = param1;
         var_572 = 0;
      }
      
      public function get location() : Number
      {
         return var_572;
      }
   }
}
