package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_299:Timer;
      
      protected var var_889:String;
      
      protected var var_890:uint;
      
      protected var var_1060:Point;
      
      protected var var_230:IToolTipWindow;
      
      protected var var_1061:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1060 = new Point();
         var_1061 = new Point(20,20);
         var_890 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_299 != null)
         {
            var_299.stop();
            var_299.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_299 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1060);
            if(var_230 != null && true)
            {
               var_230.x = param1 + var_1061.x;
               var_230.y = param2 + var_1061.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_299 != null)
         {
            var_299.reset();
         }
         if(_window && true)
         {
            if(var_230 == null || false)
            {
               var_230 = _window.context.create("undefined::ToolTip",var_889,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_230.x = _loc2_.x + var_1060.x + var_1061.x;
            var_230.y = _loc2_.y + var_1060.y + var_1061.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_889 = IInteractiveWindow(param1).toolTipCaption;
               var_890 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_889 = param1.caption;
               var_890 = 500;
            }
            _mouse.x = var_111.mouseX;
            _mouse.y = var_111.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1060);
            if(var_889 != null && var_889 != "")
            {
               if(var_299 == null)
               {
                  var_299 = new Timer(var_890,1);
                  var_299.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_299.reset();
               var_299.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_230 != null && true)
         {
            var_230.destroy();
            var_230 = null;
         }
      }
   }
}
