package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1813:Array;
      
      private var var_1814:String;
      
      private var var_1815:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1814 = param1;
         var_1813 = param2;
         var_1815 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1814;
      }
      
      public function get yieldList() : Array
      {
         return var_1813;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1815;
      }
   }
}
