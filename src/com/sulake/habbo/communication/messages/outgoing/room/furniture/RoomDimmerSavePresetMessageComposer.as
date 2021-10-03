package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1933:int;
      
      private var var_1935:int;
      
      private var var_1934:Boolean;
      
      private var var_1931:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1932:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1935 = param1;
         var_1933 = param2;
         var_1931 = param3;
         var_1932 = param4;
         var_1934 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1935,var_1933,var_1931,var_1932,int(var_1934)];
      }
      
      public function dispose() : void
      {
      }
   }
}
