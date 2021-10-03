package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1316:String = "WN_CREATED";
      
      public static const const_801:String = "WN_DISABLE";
      
      public static const const_930:String = "WN_DEACTIVATED";
      
      public static const const_926:String = "WN_OPENED";
      
      public static const const_844:String = "WN_CLOSED";
      
      public static const const_948:String = "WN_DESTROY";
      
      public static const const_1505:String = "WN_ARRANGED";
      
      public static const const_443:String = "WN_PARENT_RESIZED";
      
      public static const const_992:String = "WN_ENABLE";
      
      public static const const_769:String = "WN_RELOCATE";
      
      public static const const_842:String = "WN_FOCUS";
      
      public static const const_764:String = "WN_PARENT_RELOCATED";
      
      public static const const_445:String = "WN_PARAM_UPDATED";
      
      public static const const_581:String = "WN_PARENT_ACTIVATED";
      
      public static const const_205:String = "WN_RESIZED";
      
      public static const const_779:String = "WN_CLOSE";
      
      public static const const_839:String = "WN_PARENT_REMOVED";
      
      public static const const_226:String = "WN_CHILD_RELOCATED";
      
      public static const const_537:String = "WN_ENABLED";
      
      public static const const_219:String = "WN_CHILD_RESIZED";
      
      public static const const_771:String = "WN_MINIMIZED";
      
      public static const const_496:String = "WN_DISABLED";
      
      public static const const_176:String = "WN_CHILD_ACTIVATED";
      
      public static const const_346:String = "WN_STATE_UPDATED";
      
      public static const const_641:String = "WN_UNSELECTED";
      
      public static const const_360:String = "WN_STYLE_UPDATED";
      
      public static const const_1414:String = "WN_UPDATE";
      
      public static const const_334:String = "WN_PARENT_ADDED";
      
      public static const const_601:String = "WN_RESIZE";
      
      public static const const_675:String = "WN_CHILD_REMOVED";
      
      public static const const_1552:String = "";
      
      public static const const_837:String = "WN_RESTORED";
      
      public static const const_288:String = "WN_SELECTED";
      
      public static const const_814:String = "WN_MINIMIZE";
      
      public static const const_867:String = "WN_FOCUSED";
      
      public static const const_1333:String = "WN_LOCK";
      
      public static const const_292:String = "WN_CHILD_ADDED";
      
      public static const const_956:String = "WN_UNFOCUSED";
      
      public static const const_433:String = "WN_RELOCATED";
      
      public static const const_775:String = "WN_DEACTIVATE";
      
      public static const const_1273:String = "WN_CRETAE";
      
      public static const const_887:String = "WN_RESTORE";
      
      public static const const_309:String = "WN_ACTVATED";
      
      public static const const_1267:String = "WN_LOCKED";
      
      public static const const_462:String = "WN_SELECT";
      
      public static const const_925:String = "WN_MAXIMIZE";
      
      public static const const_815:String = "WN_OPEN";
      
      public static const const_596:String = "WN_UNSELECT";
      
      public static const const_1568:String = "WN_ARRANGE";
      
      public static const const_1300:String = "WN_UNLOCKED";
      
      public static const const_1581:String = "WN_UPDATED";
      
      public static const const_940:String = "WN_ACTIVATE";
      
      public static const const_1343:String = "WN_UNLOCK";
      
      public static const const_902:String = "WN_MAXIMIZED";
      
      public static const const_835:String = "WN_DESTROYED";
      
      public static const const_772:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1560,cancelable);
      }
   }
}
