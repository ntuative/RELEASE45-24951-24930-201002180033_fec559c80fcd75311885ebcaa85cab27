package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.furniture.FurnitureVisualization;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.utils.IRoomGeometry;
   
   public class RoomTileCursorVisualization extends FurnitureVisualization
   {
       
      
      public function RoomTileCursorVisualization()
      {
         super();
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc6_:* = null;
         var _loc3_:IRoomObjectModel = object.getModel();
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Boolean = Boolean(_loc3_.getNumber(RoomObjectVariableEnum.const_62));
         if(_loc4_)
         {
            super.update(param1,param2);
         }
         var _loc5_:int = spriteCount - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = getSprite(_loc5_);
            if(_loc6_ != null)
            {
               _loc6_.visible = _loc4_;
               _loc6_.varyingDepth = true;
            }
            _loc5_--;
         }
      }
      
      override protected function updateSprites(param1:int, param2:Number) : void
      {
         var _loc3_:IRoomObjectModel = object.getModel();
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Boolean = Boolean(_loc3_.getNumber(RoomObjectVariableEnum.const_62));
         if(_loc4_)
         {
            super.updateSprites(param1,param2);
         }
      }
   }
}
