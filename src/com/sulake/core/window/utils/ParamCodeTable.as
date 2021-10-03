package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_90;
         param1["bound_to_parent_rect"] = const_67;
         param1["child_window"] = const_972;
         param1["embedded_controller"] = const_316;
         param1["resize_to_accommodate_children"] = const_44;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_571;
         param1["mouse_dragging_target"] = const_181;
         param1["mouse_dragging_trigger"] = const_310;
         param1["mouse_scaling_target"] = const_214;
         param1["mouse_scaling_trigger"] = const_423;
         param1["horizontal_mouse_scaling_trigger"] = const_196;
         param1["vertical_mouse_scaling_trigger"] = const_183;
         param1["observe_parent_input_events"] = const_866;
         param1["optimize_region_to_layout_size"] = const_441;
         param1["parent_window"] = const_964;
         param1["relative_horizontal_scale_center"] = const_160;
         param1["relative_horizontal_scale_fixed"] = const_89;
         param1["relative_horizontal_scale_move"] = const_280;
         param1["relative_horizontal_scale_strech"] = const_235;
         param1["relative_scale_center"] = const_985;
         param1["relative_scale_fixed"] = const_612;
         param1["relative_scale_move"] = const_862;
         param1["relative_scale_strech"] = const_970;
         param1["relative_vertical_scale_center"] = const_152;
         param1["relative_vertical_scale_fixed"] = const_93;
         param1["relative_vertical_scale_move"] = const_317;
         param1["relative_vertical_scale_strech"] = const_228;
         param1["on_resize_align_left"] = const_533;
         param1["on_resize_align_right"] = const_455;
         param1["on_resize_align_center"] = const_397;
         param1["on_resize_align_top"] = const_523;
         param1["on_resize_align_bottom"] = const_413;
         param1["on_resize_align_middle"] = const_370;
         param1["on_accommodate_align_left"] = const_991;
         param1["on_accommodate_align_right"] = const_399;
         param1["on_accommodate_align_center"] = const_501;
         param1["on_accommodate_align_top"] = const_973;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_611;
         param1["route_input_events_to_parent"] = const_451;
         param1["use_parent_graphic_context"] = const_14;
         param1["draggable_with_mouse"] = const_919;
         param1["scalable_with_mouse"] = const_899;
         param1["reflect_horizontal_resize_to_parent"] = const_343;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_234;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
