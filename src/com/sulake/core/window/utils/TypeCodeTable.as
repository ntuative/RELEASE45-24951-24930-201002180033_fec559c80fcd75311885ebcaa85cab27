package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_695;
         param1["bitmap"] = const_607;
         param1["border"] = const_636;
         param1["border_notify"] = const_1174;
         param1["button"] = const_377;
         param1["button_thick"] = const_705;
         param1["button_icon"] = const_1306;
         param1["button_group_left"] = const_590;
         param1["button_group_center"] = const_532;
         param1["button_group_right"] = const_588;
         param1["canvas"] = const_549;
         param1["checkbox"] = const_586;
         param1["closebutton"] = const_981;
         param1["container"] = const_300;
         param1["container_button"] = const_674;
         param1["display_object_wrapper"] = const_573;
         param1["dropmenu"] = const_380;
         param1["dropmenu_item"] = const_363;
         param1["frame"] = const_312;
         param1["frame_notify"] = const_1163;
         param1["header"] = const_627;
         param1["icon"] = const_799;
         param1["itemgrid"] = const_886;
         param1["itemgrid_horizontal"] = const_454;
         param1["itemgrid_vertical"] = const_552;
         param1["itemlist"] = const_944;
         param1["itemlist_horizontal"] = const_290;
         param1["itemlist_vertical"] = const_305;
         param1["maximizebox"] = const_1223;
         param1["menu"] = const_1351;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_850;
         param1["minimizebox"] = const_1269;
         param1["notify"] = const_1358;
         param1["null"] = const_701;
         param1["password"] = const_610;
         param1["radiobutton"] = const_710;
         param1["region"] = const_432;
         param1["restorebox"] = const_1288;
         param1["scaler"] = const_800;
         param1["scaler_horizontal"] = const_1290;
         param1["scaler_vertical"] = const_1202;
         param1["scrollbar_horizontal"] = const_412;
         param1["scrollbar_vertical"] = const_676;
         param1["scrollbar_slider_button_up"] = const_870;
         param1["scrollbar_slider_button_down"] = const_776;
         param1["scrollbar_slider_button_left"] = const_950;
         param1["scrollbar_slider_button_right"] = const_880;
         param1["scrollbar_slider_bar_horizontal"] = const_802;
         param1["scrollbar_slider_bar_vertical"] = const_767;
         param1["scrollbar_slider_track_horizontal"] = const_854;
         param1["scrollbar_slider_track_vertical"] = const_813;
         param1["scrollable_itemlist"] = const_1342;
         param1["scrollable_itemlist_vertical"] = const_391;
         param1["scrollable_itemlist_horizontal"] = const_966;
         param1["selector"] = const_577;
         param1["selector_list"] = const_518;
         param1["submenu"] = const_850;
         param1["tab_button"] = const_618;
         param1["tab_container_button"] = const_976;
         param1["tab_context"] = const_389;
         param1["tab_content"] = const_825;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_576;
         param1["input"] = const_694;
         param1["toolbar"] = const_1257;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
