package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_307:String = "WE_CHILD_RESIZED";
      
      public static const const_1334:String = "WE_CLOSE";
      
      public static const const_1170:String = "WE_DESTROY";
      
      public static const const_122:String = "WE_CHANGE";
      
      public static const const_1301:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1498:String = "WE_PARENT_RESIZE";
      
      public static const const_76:String = "WE_UPDATE";
      
      public static const const_1198:String = "WE_MAXIMIZE";
      
      public static const const_411:String = "WE_DESTROYED";
      
      public static const const_896:String = "WE_UNSELECT";
      
      public static const const_1229:String = "WE_MAXIMIZED";
      
      public static const const_1504:String = "WE_UNLOCKED";
      
      public static const const_436:String = "WE_CHILD_REMOVED";
      
      public static const const_151:String = "WE_OK";
      
      public static const const_26:String = "WE_RESIZED";
      
      public static const const_1169:String = "WE_ACTIVATE";
      
      public static const const_236:String = "WE_ENABLED";
      
      public static const const_452:String = "WE_CHILD_RELOCATED";
      
      public static const const_1238:String = "WE_CREATE";
      
      public static const const_558:String = "WE_SELECT";
      
      public static const const_149:String = "";
      
      public static const const_1464:String = "WE_LOCKED";
      
      public static const const_1539:String = "WE_PARENT_RELOCATE";
      
      public static const const_1490:String = "WE_CHILD_REMOVE";
      
      public static const const_1573:String = "WE_CHILD_RELOCATE";
      
      public static const const_1465:String = "WE_LOCK";
      
      public static const const_191:String = "WE_FOCUSED";
      
      public static const const_613:String = "WE_UNSELECTED";
      
      public static const const_847:String = "WE_DEACTIVATED";
      
      public static const const_1329:String = "WE_MINIMIZED";
      
      public static const const_1415:String = "WE_ARRANGED";
      
      public static const const_1493:String = "WE_UNLOCK";
      
      public static const const_1427:String = "WE_ATTACH";
      
      public static const const_1191:String = "WE_OPEN";
      
      public static const const_1236:String = "WE_RESTORE";
      
      public static const const_1532:String = "WE_PARENT_RELOCATED";
      
      public static const const_1304:String = "WE_RELOCATE";
      
      public static const const_1453:String = "WE_CHILD_RESIZE";
      
      public static const const_1546:String = "WE_ARRANGE";
      
      public static const const_1340:String = "WE_OPENED";
      
      public static const const_1182:String = "WE_CLOSED";
      
      public static const const_1518:String = "WE_DETACHED";
      
      public static const const_1471:String = "WE_UPDATED";
      
      public static const const_1305:String = "WE_UNFOCUSED";
      
      public static const const_425:String = "WE_RELOCATED";
      
      public static const const_1275:String = "WE_DEACTIVATE";
      
      public static const const_185:String = "WE_DISABLED";
      
      public static const const_659:String = "WE_CANCEL";
      
      public static const const_528:String = "WE_ENABLE";
      
      public static const const_1298:String = "WE_ACTIVATED";
      
      public static const const_1237:String = "WE_FOCUS";
      
      public static const const_1562:String = "WE_DETACH";
      
      public static const const_1310:String = "WE_RESTORED";
      
      public static const const_1128:String = "WE_UNFOCUS";
      
      public static const const_36:String = "WE_SELECTED";
      
      public static const const_1141:String = "WE_PARENT_RESIZED";
      
      public static const const_1114:String = "WE_CREATED";
      
      public static const const_1439:String = "WE_ATTACHED";
      
      public static const const_1326:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1560:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1324:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1560 = param3;
         var_1324 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1324;
      }
      
      public function get related() : IWindow
      {
         return var_1560;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1324 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
