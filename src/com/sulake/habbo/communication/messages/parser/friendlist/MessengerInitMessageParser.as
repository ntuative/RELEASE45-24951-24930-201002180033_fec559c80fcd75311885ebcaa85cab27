package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2263:int;
      
      private var var_2266:int;
      
      private var var_2262:int;
      
      private var var_213:Array;
      
      private var var_2265:int;
      
      private var var_2264:int;
      
      private var var_335:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_335 = new Array();
         this.var_213 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2263;
      }
      
      public function get friends() : Array
      {
         return this.var_213;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2262;
      }
      
      public function get categories() : Array
      {
         return this.var_335;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2266;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2264;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2264 = param1.readInteger();
         this.var_2262 = param1.readInteger();
         this.var_2263 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_335.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_213.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2266 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2265;
      }
   }
}
