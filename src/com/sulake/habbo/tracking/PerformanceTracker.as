package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1531:GarbageMonitor = null;
      
      private var var_1173:int = 0;
      
      private var var_1125:Boolean = false;
      
      private var var_1700:String = "";
      
      private var var_1532:String = "";
      
      private var var_339:Number = 0;
      
      private var var_1290:int = 10;
      
      private var var_2302:Array;
      
      private var var_597:int = 0;
      
      private var var_1291:int = 60;
      
      private var var_1030:int = 0;
      
      private var var_1029:int = 0;
      
      private var var_1699:String = "";
      
      private var var_2172:Number = 0;
      
      private var var_1289:int = 1000;
      
      private var var_2171:Boolean = true;
      
      private var var_2173:Number = 0.15;
      
      private var var_167:IHabboConfigurationManager = null;
      
      private var var_1703:String = "";
      
      private var var_1288:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2302 = [];
         super();
         var_1532 = Capabilities.version;
         var_1700 = Capabilities.os;
         var_1125 = Capabilities.isDebugger;
         var_1703 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1531 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1173 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1531.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1531.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_339;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1291 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1532;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1029;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1289)
         {
            ++var_1030;
            _loc3_ = true;
         }
         else
         {
            ++var_597;
            if(var_597 <= 1)
            {
               var_339 = param1;
            }
            else
            {
               _loc4_ = Number(var_597);
               var_339 = var_339 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1173 > var_1291 * 1000 && var_1288 < var_1290)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_339);
            _loc5_ = true;
            if(var_2171 && var_1288 > 0)
            {
               _loc6_ = differenceInPercents(var_2172,var_339);
               if(_loc6_ < var_2173)
               {
                  _loc5_ = false;
               }
            }
            var_1173 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2172 = var_339;
               if(sendReport())
               {
                  ++var_1288;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1290 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1289 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1703,var_1532,var_1700,var_1699,var_1125,_loc4_,_loc3_,var_1029,var_339,var_1030);
            _connection.send(_loc1_);
            var_1029 = 0;
            var_339 = 0;
            var_597 = 0;
            var_1030 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_167 = param1;
         var_1291 = int(var_167.getKey("performancetest.interval","60"));
         var_1289 = int(var_167.getKey("performancetest.slowupdatelimit","1000"));
         var_1290 = int(var_167.getKey("performancetest.reportlimit","10"));
         var_2173 = Number(var_167.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2171 = Boolean(int(var_167.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
