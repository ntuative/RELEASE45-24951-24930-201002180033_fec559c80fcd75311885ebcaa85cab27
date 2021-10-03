package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1428:int;
      
      private var var_1427:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1428;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1428 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1428 = this.var_1428;
         _loc1_.var_1427 = this.var_1427;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1427 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1427;
      }
   }
}
