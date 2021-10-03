package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1911:int = 0;
      
      private var var_2002:int = 0;
      
      private var var_1570:int = 0;
      
      private var var_1915:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2002;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2002 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1911 = param1;
      }
      
      public function get credits() : int
      {
         return var_1570;
      }
      
      public function get clubDays() : int
      {
         return var_1911;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1915 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1570 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1915;
      }
   }
}
