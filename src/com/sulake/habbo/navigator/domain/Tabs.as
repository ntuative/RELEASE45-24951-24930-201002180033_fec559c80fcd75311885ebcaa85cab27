package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_513:int = 6;
      
      public static const const_200:int = 5;
      
      public static const const_499:int = 2;
      
      public static const const_268:int = 9;
      
      public static const const_318:int = 4;
      
      public static const const_246:int = 2;
      
      public static const const_514:int = 4;
      
      public static const const_173:int = 8;
      
      public static const const_683:int = 7;
      
      public static const const_238:int = 3;
      
      public static const const_275:int = 1;
      
      public static const const_198:int = 5;
      
      public static const const_463:int = 12;
      
      public static const const_265:int = 1;
      
      public static const const_534:int = 11;
      
      public static const const_566:int = 3;
      
      public static const const_1527:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_381:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_381 = new Array();
         var_381.push(new Tab(_navigator,const_275,const_463,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_459));
         var_381.push(new Tab(_navigator,const_246,const_265,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_459));
         var_381.push(new Tab(_navigator,const_318,const_534,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_765));
         var_381.push(new Tab(_navigator,const_238,const_200,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_459));
         var_381.push(new Tab(_navigator,const_198,const_173,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_686));
         setSelectedTab(const_275);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_381)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_381)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_381)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_318;
      }
      
      public function get tabs() : Array
      {
         return var_381;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
