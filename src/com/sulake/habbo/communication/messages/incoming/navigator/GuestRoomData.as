package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1767:int;
      
      private var var_1843:String;
      
      private var var_1842:int;
      
      private var var_1840:int;
      
      private var var_695:Boolean;
      
      private var var_1600:Boolean;
      
      private var var_391:int;
      
      private var var_1179:String;
      
      private var var_1595:int;
      
      private var var_1225:int;
      
      private var _ownerName:String;
      
      private var var_654:String;
      
      private var var_1844:int;
      
      private var var_1841:RoomThumbnailData;
      
      private var var_1592:Boolean;
      
      private var var_593:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_593 = new Array();
         super();
         var_391 = param1.readInteger();
         var_695 = param1.readBoolean();
         var_654 = param1.readString();
         _ownerName = param1.readString();
         var_1595 = param1.readInteger();
         var_1767 = param1.readInteger();
         var_1844 = param1.readInteger();
         var_1179 = param1.readString();
         var_1842 = param1.readInteger();
         var_1592 = param1.readBoolean();
         var_1840 = param1.readInteger();
         var_1225 = param1.readInteger();
         var_1843 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_593.push(_loc4_);
            _loc3_++;
         }
         var_1841 = new RoomThumbnailData(param1);
         var_1600 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1844;
      }
      
      public function get roomName() : String
      {
         return var_654;
      }
      
      public function get userCount() : int
      {
         return var_1767;
      }
      
      public function get score() : int
      {
         return var_1840;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1843;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1592;
      }
      
      public function get tags() : Array
      {
         return var_593;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1600;
      }
      
      public function get event() : Boolean
      {
         return var_695;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_593 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1225;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1842;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1841;
      }
      
      public function get doorMode() : int
      {
         return var_1595;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get description() : String
      {
         return var_1179;
      }
   }
}
