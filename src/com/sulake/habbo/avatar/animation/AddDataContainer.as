package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1363:String;
      
      private var var_1436:String;
      
      private var var_1016:String;
      
      private var var_400:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1363 = String(param1.@align);
         var_1016 = String(param1.@base);
         var_1436 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_400 = Number(_loc2_);
            if(var_400 > 1)
            {
               var_400 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1363;
      }
      
      public function get ink() : String
      {
         return var_1436;
      }
      
      public function get base() : String
      {
         return var_1016;
      }
      
      public function get isBlended() : Boolean
      {
         return var_400 != 1;
      }
      
      public function get blend() : Number
      {
         return var_400;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
