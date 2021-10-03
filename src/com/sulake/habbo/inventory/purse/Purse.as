package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1912:Boolean = false;
      
      private var var_1913:int = 0;
      
      private var var_1911:int = 0;
      
      private var var_1914:int = 0;
      
      private var var_1539:int = 0;
      
      private var var_1915:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1539 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1913;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1912;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1912 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1913 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1911 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1539;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1914 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1911;
      }
      
      public function get pixelBalance() : int
      {
         return var_1914;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1915 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1915;
      }
   }
}
