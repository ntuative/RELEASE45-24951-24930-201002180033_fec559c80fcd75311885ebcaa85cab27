package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import com.sulake.core.utils.Map;
   
   public class Plane
   {
       
      
      private var var_1618:int = -1;
      
      private var _sizes:Array;
      
      private var var_370:Map;
      
      private var var_633:PlaneVisualization = null;
      
      public function Plane()
      {
         _sizes = [];
         super();
         var_370 = new Map();
      }
      
      private function getSizeIndex(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         while(_loc3_ < _sizes.length)
         {
            if(_sizes[_loc3_] > param1)
            {
               if(0 - param1 < param1 - 0)
               {
                  _loc2_ = _loc3_;
               }
               break;
            }
            _loc2_ = _loc3_;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function createPlaneVisualization(param1:int, param2:int, param3:Number, param4:Number) : PlaneVisualization
      {
         if(var_370.getValue(String(param1)) != null)
         {
            return null;
         }
         var _loc5_:PlaneVisualization = new PlaneVisualization(param1,param2,param3,param4);
         var_370.add(String(param1),_loc5_);
         _sizes.push(param1);
         _sizes.sort();
         return _loc5_;
      }
      
      public function isStatic(param1:int) : Boolean
      {
         return true;
      }
      
      protected function getPlaneVisualization(param1:int) : PlaneVisualization
      {
         if(param1 == var_1618)
         {
            return var_633;
         }
         var _loc2_:int = getSizeIndex(param1);
         if(_loc2_ < _sizes.length)
         {
            var_633 = var_370.getValue(String(_sizes[_loc2_])) as PlaneVisualization;
         }
         else
         {
            var_633 = null;
         }
         var_1618 = param1;
         return var_633;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(var_370 != null)
         {
            _loc1_ = null;
            _loc2_ = 0;
            while(_loc2_ < var_370.length)
            {
               _loc1_ = var_370.getWithIndex(_loc2_) as PlaneVisualization;
               if(_loc1_ != null)
               {
                  _loc1_.dispose();
               }
               _loc2_++;
            }
            var_370.dispose();
            var_370 = null;
         }
         var_633 = null;
         _sizes = null;
      }
   }
}
