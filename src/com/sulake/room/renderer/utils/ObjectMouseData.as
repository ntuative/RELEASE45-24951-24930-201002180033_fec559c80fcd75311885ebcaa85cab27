package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1579:String = "";
      
      private var var_136:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1579 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_136 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1579;
      }
      
      public function get objectId() : String
      {
         return var_136;
      }
   }
}
