package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_157:String;
      
      private var var_387:int;
      
      private var var_175:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_157 = param1;
         var_175 = param2;
         var_387 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_175.text = var_157.substring(0,param1) + "...";
         return var_175.textHeight > var_387;
      }
   }
}
