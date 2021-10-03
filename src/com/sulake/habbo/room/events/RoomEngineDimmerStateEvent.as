package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const DIMMER_STATE:String = "REDSE_ROOM_COLOR";
       
      
      private var var_982:int;
      
      private var _color:uint;
      
      private var var_983:int;
      
      private var var_1713:int;
      
      private var var_31:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(DIMMER_STATE,param1,param2,param8,param9);
         var_31 = param3;
         var_1713 = param4;
         var_982 = param5;
         _color = param6;
         var_983 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_983;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_982;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get presetId() : int
      {
         return var_1713;
      }
   }
}
