package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1041:int = -1;
      
      private static const const_735:int = 20;
      
      private static const const_469:int = 9;
       
      
      private var var_545:Boolean = false;
      
      private var var_211:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_211 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_545 = true;
            var_211 = new Array();
            var_211.push(const_1041);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_545)
            {
               var_545 = false;
               var_211 = new Array();
               var_211.push(const_735);
               var_211.push(const_469 + param1);
               var_211.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
