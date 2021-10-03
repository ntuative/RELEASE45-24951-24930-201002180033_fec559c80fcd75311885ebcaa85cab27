package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.widgets.ClubGiftWidget;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetClubGiftInfo;
   import com.sulake.habbo.communication.messages.outgoing.catalog.SelectClubGiftComposer;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ClubGiftController
   {
       
      
      private var _widget:ClubGiftWidget;
      
      private var var_905:int;
      
      private var var_1573:int;
      
      private var var_78:HabboCatalog;
      
      private var var_547:Array;
      
      private var _windowManager:IHabboWindowManager;
      
      public function ClubGiftController(param1:HabboCatalog)
      {
         super();
         var_78 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         if(!var_78)
         {
            return null;
         }
         return var_78.windowManager;
      }
      
      public function set widget(param1:ClubGiftWidget) : void
      {
         _widget = param1;
         var_78.connection.send(new GetClubGiftInfo());
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!var_78)
         {
            return null;
         }
         return var_78.getProductData(param1);
      }
      
      public function get giftsAvailable() : int
      {
         return var_905;
      }
      
      public function getOffers() : Array
      {
         return var_547;
      }
      
      public function setInfo(param1:int, param2:int, param3:Array) : void
      {
         var_1573 = param1;
         var_905 = param2;
         var_547 = [];
         if(param3)
         {
            var_547 = param3.slice();
         }
         _widget.update();
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1573;
      }
      
      public function get assets() : IAssetLibrary
      {
         if(!var_78)
         {
            return null;
         }
         return var_78.assets;
      }
      
      public function get hasClub() : Boolean
      {
         if(!var_78 || !var_78.getPurse())
         {
            return false;
         }
         return var_78.getPurse().clubDays > 0;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         if(!var_78)
         {
            return null;
         }
         return var_78.localization;
      }
      
      public function selectGift(param1:String) : void
      {
         if(!param1 || !var_78 || true)
         {
            return;
         }
         var_78.connection.send(new SelectClubGiftComposer(param1));
         --var_905;
         _widget.update();
      }
      
      public function dispose() : void
      {
         var_78 = null;
         _windowManager = null;
      }
   }
}
