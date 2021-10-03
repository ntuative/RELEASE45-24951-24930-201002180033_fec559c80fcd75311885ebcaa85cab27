package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_449:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_421:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_59:String = "RWPDUE_CONTENTS";
      
      public static const const_461:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_336:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_42:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_175:String;
      
      private var var_1848:BitmapData;
      
      private var var_136:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_136 = param2;
         var_175 = param3;
         _controller = param4;
         var_1848 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1848;
      }
      
      public function get text() : String
      {
         return var_175;
      }
      
      public function get objectId() : int
      {
         return var_136;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
