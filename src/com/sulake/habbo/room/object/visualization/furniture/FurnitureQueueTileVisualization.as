package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1093:int = 1;
      
      private static const const_1041:int = 3;
      
      private static const const_1092:int = 2;
      
      private static const const_1094:int = 15;
       
      
      private var var_862:int;
      
      private var var_211:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_211 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1092)
         {
            var_211 = new Array();
            var_211.push(const_1093);
            var_862 = const_1094;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_862 > 0)
         {
            --var_862;
         }
         if(var_862 == 0)
         {
            if(false)
            {
               super.setAnimation(var_211.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
