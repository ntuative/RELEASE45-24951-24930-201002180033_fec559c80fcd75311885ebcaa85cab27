package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1053:int = 80;
       
      
      private var var_472:Map;
      
      private var var_654:String = "";
      
      private var var_1203:Array;
      
      public function UserRegistry()
      {
         var_472 = new Map();
         var_1203 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_472.getValue(var_1203.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_654;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_472.getValue(param1) != null)
         {
            var_472.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_654);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_654 == "")
         {
            var_1203.push(param1);
         }
         var_472.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_472;
      }
      
      public function unregisterRoom() : void
      {
         var_654 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_472.length > const_1053)
         {
            _loc1_ = var_472.getKey(0);
            var_472.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_654 = param1;
         if(var_654 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
