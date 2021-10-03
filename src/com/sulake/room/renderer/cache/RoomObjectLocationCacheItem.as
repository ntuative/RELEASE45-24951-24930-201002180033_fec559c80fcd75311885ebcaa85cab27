package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_2073:int = -1;
      
      private var var_1250:int = -1;
      
      private var var_668:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_668 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_2073;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_2073 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_668.assign(param1);
         var_668.x = Math.round(var_668.x);
         var_668.y = Math.round(var_668.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1250 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_668;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1250;
      }
   }
}
