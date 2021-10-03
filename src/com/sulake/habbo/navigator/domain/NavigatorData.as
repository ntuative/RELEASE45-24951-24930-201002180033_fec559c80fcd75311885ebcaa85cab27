package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1411:int = 10;
       
      
      private var var_1550:NavigatorSettingsMessageParser;
      
      private var var_1312:int;
      
      private var var_2222:Boolean;
      
      private var var_2221:int;
      
      private var var_875:Dictionary;
      
      private var var_2308:int;
      
      private var var_2223:int;
      
      private var var_2042:int;
      
      private var var_335:Array;
      
      private var var_2224:int;
      
      private var var_586:PublicRoomShortData;
      
      private var var_410:RoomEventData;
      
      private var var_133:MsgWithRequestId;
      
      private var var_1584:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2220:Boolean;
      
      private var var_193:GuestRoomData;
      
      private var var_710:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_335 = new Array();
         var_875 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2221;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2220;
      }
      
      public function startLoading() : void
      {
         this.var_710 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2220 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_410 != null)
         {
            var_410.dispose();
         }
         var_410 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_133 != null && var_133 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_133 != null && var_133 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_710 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_133 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_193;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_586 = null;
         var_193 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_586 = param1.publicSpace;
            var_410 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_410 != null)
         {
            var_410.dispose();
            var_410 = null;
         }
         if(var_586 != null)
         {
            var_586.dispose();
            var_586 = null;
         }
         if(var_193 != null)
         {
            var_193.dispose();
            var_193 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1550;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_710 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_335.length > param1)
         {
            return var_335[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2308 = param1.limit;
         this.var_1312 = param1.favouriteRoomIds.length;
         this.var_875 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_875[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_133 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_335;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_586;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2042 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2222;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_710 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_335.length)
         {
            if((var_335[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_193 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_710;
      }
      
      public function set categories(param1:Array) : void
      {
         var_335 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2223;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2224;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1550 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_133 == null)
         {
            return;
         }
         var_133.dispose();
         var_133 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_410;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_875[param1] = !!param2 ? "yes" : null;
         var_1312 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_133 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2042;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_133 != null && var_133 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2222 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2223 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1584 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_193 != null)
         {
            var_193.dispose();
         }
         var_193 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_335)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_193 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1550.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1312 >= var_2308;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2224 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1584;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_193 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2221 = param1;
      }
   }
}
