package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   
   public class TraxPreviewCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1089:IButtonWindow;
      
      public function TraxPreviewCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         var_1089 = _window.findChildByName("listen") as IButtonWindow;
         Logger.log("Trax listener found button: " + var_1089);
         if(var_1089 != null)
         {
            var_1089.disable();
         }
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
