package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class AvatarEditorGridView
   {
       
      
      private var _view:IWindowContainer;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _category:String;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_331:Object;
      
      private var var_810:IItemGridWindow;
      
      private var var_1468:IItemGridWindow;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_788:Boolean = true;
      
      public function AvatarEditorGridView(param1:IAvatarEditorCategoryModel, param2:String, param3:IHabboWindowManager, param4:IAssetLibrary)
      {
         super();
         _model = param1;
         _category = param2;
         _assetLibrary = param4;
         _windowManager = param3;
         var _loc5_:XmlAsset = _assetLibrary.getAssetByName("AvatarEditorGrid") as XmlAsset;
         _view = IWindowContainer(_windowManager.buildFromXML(_loc5_.content as XML));
         if(_view != null)
         {
            var_810 = _view.findChildByName("thumbs") as IItemGridWindow;
            var_1468 = _view.findChildByName("colors") as IItemGridWindow;
         }
      }
      
      private function paletteEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         if(param1.type == WindowMouseEvent.const_33)
         {
            _loc3_ = var_1468.getGridItemIndex(param1.window);
            _model.toggleColourSelection(_category,_loc3_);
         }
      }
      
      public function initFromList() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:CategoryData = _model.getCategoryContent(_category);
         for each(_loc2_ in _loc1_.data)
         {
            var_810.addGridItem(_loc2_.view);
            _loc2_.view.procedure = itemEventProc;
         }
         for each(_loc3_ in _loc1_.palette)
         {
            var_1468.addGridItem(_loc3_.view);
            _loc3_.view.procedure = paletteEventProc;
         }
         var_788 = false;
      }
      
      public function get window() : IWindowContainer
      {
         if(_view == null)
         {
            return null;
         }
         if(false)
         {
            return null;
         }
         return _view;
      }
      
      public function clearGrid() : void
      {
         if(var_810 != null)
         {
            var_810.removeGridItems();
         }
      }
      
      public function get firstView() : Boolean
      {
         return var_788;
      }
      
      public function updateItem(param1:int, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = var_810.getGridItemAt(param1);
         if(_loc3_)
         {
            _loc3_ = param2;
         }
      }
      
      private function itemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         if(param1.type == WindowMouseEvent.const_33)
         {
            _loc3_ = var_810.getGridItemIndex(param1.window);
            _model.toggleItemSelection(_category,_loc3_);
         }
      }
   }
}
