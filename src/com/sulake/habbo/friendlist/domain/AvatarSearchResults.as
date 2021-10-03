package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.communication.messages.incoming.friendlist.HabboSearchResultData;
   import flash.utils.Dictionary;
   
   public class AvatarSearchResults
   {
       
      
      private var var_1375:Array;
      
      private var var_393:IAvatarSearchDeps;
      
      private var _sentRequests:Dictionary;
      
      private var var_213:Array;
      
      public function AvatarSearchResults(param1:IAvatarSearchDeps)
      {
         _sentRequests = new Dictionary();
         super();
         var_393 = param1;
      }
      
      public function setFriendRequestSent(param1:int) : void
      {
         _sentRequests[param1] = "yes";
      }
      
      public function searchReceived(param1:Array, param2:Array) : void
      {
         var_213 = param1;
         var_1375 = param2;
         var_393.view.refreshList();
      }
      
      public function get others() : Array
      {
         return var_1375;
      }
      
      public function getResult(param1:int) : HabboSearchResultData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         for each(_loc2_ in var_213)
         {
            if(_loc2_.avatarId == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc3_ in var_1375)
         {
            if(_loc3_.avatarId == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get friends() : Array
      {
         return var_213;
      }
      
      public function isFriendRequestSent(param1:int) : Boolean
      {
         return false;
      }
   }
}
