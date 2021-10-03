package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.events.Event;
   
   public class CatalogViewer implements ICatalogViewer
   {
       
      
      private var _container:IWindowContainer;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_1470:HabboCatalog;
      
      private var var_670:ICatalogPage;
      
      private var var_78:IHabboCatalog;
      
      public function CatalogViewer(param1:IHabboCatalog, param2:IWindowContainer, param3:IRoomEngine)
      {
         super();
         var_78 = param1;
         _container = param2;
         _roomEngine = param3;
      }
      
      public function getCurrentLayoutCode() : String
      {
         if(var_670 == null)
         {
            return "";
         }
         return var_670.layoutCode;
      }
      
      public function set habboCatalog(param1:HabboCatalog) : void
      {
         var_1470 = param1;
      }
      
      public function get habboCatalog() : HabboCatalog
      {
         return var_1470;
      }
      
      public function showCatalogPage(param1:int, param2:String, param3:IPageLocalization, param4:Array) : void
      {
         Logger.log("[Catalog Viewer] Show Catalog Page: " + [param1,param2,param4.length]);
         if(var_670 != null)
         {
            _container.removeChild(var_670.window);
            var_670.dispose();
         }
         var _loc5_:ICatalogPage = new CatalogPage(this,param1,param2,param3,param4,var_1470);
         var_670 = _loc5_;
         if(_loc5_.window != null)
         {
            _container.addChild(_loc5_.window);
         }
         else
         {
            Logger.log("[CatalogViewer] No window for page: " + param2);
         }
         _container.visible = true;
      }
      
      public function get catalog() : IHabboCatalog
      {
         return var_78;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return _roomEngine;
      }
      
      public function dispatchWidgetEvent(param1:Event) : Boolean
      {
         return var_670.dispatchWidgetEvent(param1);
      }
      
      public function dispose() : void
      {
      }
   }
}
