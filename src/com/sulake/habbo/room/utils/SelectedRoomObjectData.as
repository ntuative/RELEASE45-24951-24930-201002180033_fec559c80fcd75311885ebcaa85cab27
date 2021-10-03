package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_64:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_214:Vector3d = null;
      
      private var var_1629:int = 0;
      
      private var var_1627:String = null;
      
      private var _category:int = 0;
      
      private var var_1628:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1628 = param3;
         var_64 = new Vector3d();
         var_64.assign(param4);
         var_214 = new Vector3d();
         var_214.assign(param5);
         var_1629 = param6;
         var_1627 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_64;
      }
      
      public function get typeId() : int
      {
         return var_1629;
      }
      
      public function get dir() : Vector3d
      {
         return var_214;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1627;
      }
      
      public function get operation() : String
      {
         return var_1628;
      }
      
      public function dispose() : void
      {
         var_64 = null;
         var_214 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
