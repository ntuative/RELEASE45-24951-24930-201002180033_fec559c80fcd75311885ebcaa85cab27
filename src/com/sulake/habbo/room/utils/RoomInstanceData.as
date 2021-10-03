package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_843:LegacyWallGeometry = null;
      
      private var var_569:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_568:TileHeightMap = null;
      
      private var var_2136:String = null;
      
      private var _roomId:int = 0;
      
      private var var_842:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_843 = new LegacyWallGeometry();
         var_842 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_568 != null)
         {
            var_568.dispose();
         }
         var_568 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2136 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_843;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_842;
      }
      
      public function dispose() : void
      {
         if(var_568 != null)
         {
            var_568.dispose();
            var_568 = null;
         }
         if(var_843 != null)
         {
            var_843.dispose();
            var_843 = null;
         }
         if(var_842 != null)
         {
            var_842.dispose();
            var_842 = null;
         }
         if(var_569 != null)
         {
            var_569.dispose();
            var_569 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_568;
      }
      
      public function get worldType() : String
      {
         return var_2136;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_569 != null)
         {
            var_569.dispose();
         }
         var_569 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_569;
      }
   }
}
