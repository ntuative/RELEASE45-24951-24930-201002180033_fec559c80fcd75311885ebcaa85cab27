package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_190:String = "RWUIUE_PEER";
      
      public static const const_203:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1164:String = "BOT";
      
      public static const const_829:int = 2;
      
      public static const const_1183:int = 0;
      
      public static const const_908:int = 3;
       
      
      private var var_1224:String = "";
      
      private var var_1894:Boolean = false;
      
      private var var_1889:int = 0;
      
      private var var_1883:int = 0;
      
      private var var_1893:Boolean = false;
      
      private var var_1226:String = "";
      
      private var var_1882:Boolean = false;
      
      private var var_754:int = 0;
      
      private var var_1881:Boolean = true;
      
      private var var_958:int = 0;
      
      private var var_1886:Boolean = false;
      
      private var var_1134:Boolean = false;
      
      private var var_1887:Boolean = false;
      
      private var var_1892:int = 0;
      
      private var var_1885:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1132:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1890:int = 0;
      
      private var var_1888:Boolean = false;
      
      private var var_1891:int = 0;
      
      private var var_1884:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_260 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1883;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1894;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1881;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1881 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1882 = param1;
      }
      
      public function get motto() : String
      {
         return var_1224;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1886 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1134;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1224 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1888;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1884;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1134 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1885;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function get badges() : Array
      {
         return var_260;
      }
      
      public function get amIController() : Boolean
      {
         return var_1893;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1893 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1888 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1891 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1884 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1226 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1882;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1886;
      }
      
      public function get carryItem() : int
      {
         return var_1892;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1132;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1132 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_754 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1891;
      }
      
      public function get realName() : String
      {
         return var_1226;
      }
      
      public function set webID(param1:int) : void
      {
         var_1890 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_260 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1887 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1885 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_754;
      }
      
      public function get webID() : int
      {
         return var_1890;
      }
      
      public function set groupId(param1:int) : void
      {
         var_958 = param1;
      }
      
      public function get xp() : int
      {
         return var_1889;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1894 = param1;
      }
      
      public function get groupId() : int
      {
         return var_958;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1887;
      }
      
      public function set xp(param1:int) : void
      {
         var_1889 = param1;
      }
   }
}
