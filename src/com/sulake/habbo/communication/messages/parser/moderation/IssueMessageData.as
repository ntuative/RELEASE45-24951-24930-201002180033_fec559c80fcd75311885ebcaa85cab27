package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_135:int = 1;
      
      public static const const_1203:int = 3;
      
      public static const const_444:int = 2;
       
      
      private var var_2049:int;
      
      private var var_1752:int;
      
      private var var_2053:int;
      
      private var var_1755:int;
      
      private var var_31:int;
      
      private var var_391:int;
      
      private var var_1256:int;
      
      private var var_1738:int;
      
      private var var_1044:int;
      
      private var _roomResources:String;
      
      private var var_2052:int;
      
      private var var_2050:int;
      
      private var var_2051:String;
      
      private var var_2055:String;
      
      private var var_2046:int = 0;
      
      private var var_1311:String;
      
      private var _message:String;
      
      private var var_2054:int;
      
      private var var_2048:String;
      
      private var var_1225:int;
      
      private var var_654:String;
      
      private var var_2047:String;
      
      private var var_1462:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1044 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2046 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2050;
      }
      
      public function set roomName(param1:String) : void
      {
         var_654 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2052 = param1;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_654;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1755 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_31 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1752;
      }
      
      public function get priority() : int
      {
         return var_2049 + var_2046;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1738 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2055;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1462) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1225;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2050 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1256;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2051 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2052;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1755;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2047 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1311 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1738;
      }
      
      public function set priority(param1:int) : void
      {
         var_2049 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1752 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2051;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2053 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2055 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2054 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1311;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1256 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2053;
      }
      
      public function set flatId(param1:int) : void
      {
         var_391 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1225 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1462 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2054;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2048 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1462;
      }
      
      public function get reportedUserId() : int
      {
         return var_1044;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2047;
      }
      
      public function get reporterUserName() : String
      {
         return var_2048;
      }
   }
}
