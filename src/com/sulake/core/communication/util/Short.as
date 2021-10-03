package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_663:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_663 = new ByteArray();
         var_663.writeShort(param1);
         var_663.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_663.position = 0;
         if(false)
         {
            _loc1_ = var_663.readShort();
            var_663.position = 0;
         }
         return _loc1_;
      }
   }
}
