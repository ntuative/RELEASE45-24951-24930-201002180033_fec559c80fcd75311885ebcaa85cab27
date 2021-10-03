package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_495:ToolbarIconGroup;
      
      private var var_1032:Boolean = false;
      
      private var var_2174:String;
      
      private var var_813:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1034:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_31:String = "-1";
      
      private var var_91:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_701:String;
      
      private var var_2084:int;
      
      private var var_700:Timer;
      
      private var var_1533:Array;
      
      private var var_1031:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2303:Array;
      
      private var var_262:ToolbarBarMenuAnimator;
      
      private var var_404:ToolbarIconAnimator;
      
      private var var_578:Array;
      
      private var var_867:Array;
      
      private var var_866:String = "-1";
      
      private var var_2359:Boolean = true;
      
      private var var_1033:Array;
      
      private var var_1292:Timer;
      
      private var var_2175:int;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_578 = new Array();
         var_867 = new Array();
         var_2303 = new Array();
         var_1031 = new ToolbarIconBouncer(0.8,1);
         super();
         var_495 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_701 = param4;
         _events = param5;
         var_262 = param6;
         var_1292 = new Timer(40,40);
         var_1292.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_91 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_432,HabboWindowStyle.const_23,HabboWindowParam.const_22,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_91.background = true;
         var_91.alphaTreshold = 0;
         var_91.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_23,HabboWindowParam.const_23,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_91.addChild(_window);
         _window.addEventListener(WindowEvent.const_26,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1533[var_1033.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2175;
      }
      
      public function get iconId() : String
      {
         return var_701;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_813 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_31 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_91 == null || _window == null)
         {
            return;
         }
         var_91.width = _window.width;
         var_91.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_79 = (0 - 0) / 2;
            _y = var_813 + (0 - 0) / 2;
         }
         else
         {
            var_79 = var_813 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_91.x = var_79;
         var_91.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_91 != null)
         {
            var_91.dispose();
            var_91 = null;
         }
         var_578 = null;
         var_867 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_262 = null;
         var_404 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_578.indexOf(param1) < 0)
         {
            var_578.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_867.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1032)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_262)
               {
                  var_262.repositionWindow(var_701,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_45);
                  _loc4_.iconId = var_701;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1034;
                  }
               }
               break;
            case WindowMouseEvent.const_11:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_866;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_578.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_867[var_578.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1032 = param1;
         if(var_91 != null)
         {
            var_91.visible = var_1032;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_91 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_91.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_91.toolTipCaption = "${toolbar.icon.tooltip." + var_2174.toLowerCase() + "}";
         }
         var_91.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_262 != null)
         {
            var_262.animateWindowIn(this,param1,param2,var_701,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_404 != null && _window != null)
         {
            var_404.update(_window);
            if(var_404.hasNextState())
            {
               state = var_404.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1533 = new Array();
         var_1033 = new Array();
         var_2174 = param1.@id;
         var_2175 = int(param1.@window_offset_from_icon);
         var_2084 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1034 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_866 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1033.push(_loc5_.id);
               var_1533.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1034 == "-1")
                  {
                     var_1034 = _loc5_.id;
                  }
                  if(var_866 == "-1")
                  {
                     var_866 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_31 = var_866;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_262 != null)
         {
            var_262.hideWindow(param1,param2,var_701,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_262 != null)
         {
            var_262.positionWindow(this,param1,param2,var_701,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_262 != null)
         {
            var_262.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1032;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1031 != null && _window != null)
         {
            var_1031.update();
            _window.y = var_1031.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_700 != null)
         {
            var_700.stop();
            var_700 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1032)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_404 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_79,_y,_bitmapData);
            if(false)
            {
               var_700 = new Timer(_loc1_.timer);
               var_700.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_700.start();
            }
            if(_loc1_.bounce)
            {
               var_1031.reset(-7);
               var_1292.reset();
               var_1292.start();
            }
         }
         else
         {
            var_404 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2084 + var_495.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_31);
      }
      
      public function get window() : IWindow
      {
         return var_91;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_867[var_578.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_495;
      }
   }
}
