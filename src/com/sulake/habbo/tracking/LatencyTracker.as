package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_146:Array;
      
      private var var_31:Boolean = false;
      
      private var var_1524:int = 0;
      
      private var var_1522:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_492:Map;
      
      private var var_2158:int = 0;
      
      private var var_1523:int = 0;
      
      private var var_167:IHabboConfigurationManager;
      
      private var var_1279:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1525:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_31)
         {
            return;
         }
         if(getTimer() - var_1524 > var_1522)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1524 = getTimer();
         var_492.add(var_1279,var_1524);
         _connection.send(new LatencyPingRequestMessageComposer(var_1279));
         ++var_1279;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_167 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1522 = int(var_167.getKey("latencytest.interval"));
         var_1525 = int(var_167.getKey("latencytest.report.index"));
         var_2158 = int(var_167.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1522 < 1)
         {
            return;
         }
         var_492 = new Map();
         var_146 = new Array();
         var_31 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_492 == null || var_146 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_492.getValue(_loc2_.requestId);
         var_492.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_146.push(_loc4_);
         if(var_146.length == var_1525 && var_1525 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_146.length)
            {
               _loc5_ += var_146[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_146.length)
            {
               if(var_146[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_146[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_146 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1523) > var_2158 || var_1523 == 0)
            {
               var_1523 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_146.length);
               _connection.send(_loc11_);
            }
            var_146 = [];
         }
      }
      
      public function dispose() : void
      {
         var_31 = false;
         var_167 = null;
         _communication = null;
         _connection = null;
         if(var_492 != null)
         {
            var_492.dispose();
            var_492 = null;
         }
         var_146 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_167 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
