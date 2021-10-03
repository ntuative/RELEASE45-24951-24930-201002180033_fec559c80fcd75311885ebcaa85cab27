package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2103:Number = 0;
      
      private var var_2101:Number = 0;
      
      private var var_2102:Number = 0;
      
      private var var_2100:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2101 = param1;
         var_2102 = param2;
         var_2103 = param3;
         var_2100 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2101;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2103;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2102;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2100;
      }
   }
}
