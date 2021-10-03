package com.sulake.habbo.moderation
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.ChatlineData;
   import com.sulake.habbo.communication.messages.incoming.moderation.RoomChatlogData;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class ChatlogCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1458:IMessageComposer;
      
      private var var_500:Timer;
      
      private var _disposed:Boolean;
      
      private var var_44:ModerationManager;
      
      private var _type:int;
      
      private var var_873:IWindowContainer;
      
      private var var_874:IWindowContainer;
      
      private var var_46:IFrameWindow;
      
      private var var_1309:Dictionary;
      
      private var var_99:Array;
      
      private var _id:int;
      
      private var var_43:IItemListWindow;
      
      public function ChatlogCtrl(param1:IMessageComposer, param2:ModerationManager, param3:int, param4:int)
      {
         super();
         var_44 = param2;
         _type = param3;
         _id = param4;
         var_1458 = param1;
      }
      
      public function show() : void
      {
         var_873 = IWindowContainer(var_44.getXmlWindow("chatlog_roomheader"));
         var_874 = IWindowContainer(var_44.getXmlWindow("chatlog_chatline"));
         var_500 = new Timer(300,1);
         var_500.addEventListener(TimerEvent.TIMER,onResizeTimer);
         var_46 = IFrameWindow(var_44.getXmlWindow("chatlog_frame"));
         var_43 = IItemListWindow(var_46.findChildByName("chatline_list"));
         var_46.procedure = onWindow;
         var _loc1_:IWindow = var_46.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_44.connection.send(var_1458);
         var_44.messageHandler.addChatlogListener(this);
      }
      
      public function onChatlog(param1:String, param2:int, param3:int, param4:Array, param5:Dictionary) : void
      {
         if(param2 != _type || param3 != _id || _disposed)
         {
            return;
         }
         var_44.messageHandler.removeChatlogListener(this);
         var_46.caption = param1;
         var_99 = param4;
         var_1309 = param5;
         populate();
         onResizeTimer(null);
         var_46.visible = true;
      }
      
      public function getId() : String
      {
         return "" + _id;
      }
      
      private function populateRoomChat(param1:RoomChatlogData) : void
      {
         var _loc5_:* = null;
         var _loc2_:IWindowContainer = IWindowContainer(var_873.clone());
         var _loc3_:ITextWindow = ITextWindow(_loc2_.findChildByName("room_name_txt"));
         if(param1.roomId > 0)
         {
            _loc3_.caption = param1.roomName;
            new OpenRoomTool(var_46,var_44,_loc3_,param1.isPublic,param1.roomId);
         }
         else
         {
            _loc3_.caption = "Not in room";
            _loc3_.underline = false;
         }
         var_43.addListItem(_loc2_);
         var _loc4_:* = true;
         for each(_loc5_ in param1.chatlog)
         {
            populateChatline(var_43,_loc5_,_loc4_);
            _loc4_ = !_loc4_;
         }
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_44 = null;
         if(var_46 != null)
         {
            var_46.destroy();
            var_46 = null;
         }
         if(var_43 != null)
         {
            var_43.dispose();
            var_43 = null;
         }
         if(var_873 != null)
         {
            var_873.dispose();
            var_873 = null;
         }
         if(var_874 != null)
         {
            var_874.dispose();
            var_874 = null;
         }
         var_99 = null;
         var_1309 = null;
         if(var_500 != null)
         {
            var_500.stop();
            var_500 = null;
         }
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         Logger.log("XXX RESIZE XXX");
         refreshListDims();
         var _loc2_:Boolean = refreshScrollBarVisibility();
         if(_loc2_)
         {
            refreshListDims();
         }
      }
      
      private function refreshScrollBarVisibility() : Boolean
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_43.parent);
         var _loc2_:IWindow = _loc1_.getChildByName("scroller") as IWindow;
         var _loc3_:* = var_43.scrollableRegion.height > var_43.height;
         if(_loc2_.visible)
         {
            if(_loc3_)
            {
               return false;
            }
            _loc2_.visible = false;
            var_43.width = NaN;
            return true;
         }
         if(_loc3_)
         {
            _loc2_.visible = true;
            var_43.width = -22;
            return true;
         }
         return false;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function populate() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_99)
         {
            populateRoomChat(_loc1_);
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_26 || param2 != var_46)
         {
            return;
         }
         if(!this.var_500.running)
         {
            this.var_500.reset();
            this.var_500.start();
         }
      }
      
      private function populateChatline(param1:IItemListWindow, param2:ChatlineData, param3:Boolean) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(var_874.clone());
         _loc4_.color = var_1309[param2.chatterId] != null ? (!!param3 ? 4294623571 : uint(4294959680)) : (!!param3 ? 4288861930 : uint(4294967295));
         var _loc5_:ITextWindow = ITextWindow(_loc4_.findChildByName("time_txt"));
         _loc5_.text = RoomVisitsCtrl.getFormattedTime(param2.hour,param2.minute);
         var _loc6_:ITextWindow = ITextWindow(_loc4_.findChildByName("chatter_txt"));
         _loc6_.color = _loc4_.color;
         if(param2.chatterId > 0)
         {
            _loc6_.text = param2.chatterName;
            new OpenUserInfo(var_46,var_44,_loc6_,param2.chatterId);
         }
         else if(param2.chatterId == 0)
         {
            _loc6_.text = "Bot / pet";
            _loc6_.underline = false;
         }
         else
         {
            _loc6_.text = "-";
            _loc6_.underline = false;
         }
         var _loc7_:ITextWindow = ITextWindow(_loc4_.findChildByName("msg_txt"));
         _loc7_.text = param2.msg;
         _loc7_.height = _loc7_.textHeight + 5;
         _loc4_.height = _loc7_.height;
         param1.addListItem(_loc4_);
      }
      
      private function refreshListDims() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var_43.autoArrangeItems = false;
         var _loc1_:int = 0;
         while(_loc1_ < var_43.numListItems)
         {
            _loc2_ = IWindowContainer(var_43.getListItemAt(_loc1_));
            if(_loc2_.name == "chatline")
            {
               _loc3_ = ITextWindow(_loc2_.findChildByName("msg_txt"));
               _loc3_.width = _loc2_.width - _loc3_.x;
               _loc3_.height = _loc3_.textHeight + 5;
               _loc3_.invalidate();
               _loc2_.height = _loc3_.height;
               Logger.log("REFRESHED DIMS: " + _loc2_.rectangle + ", " + _loc3_.rectangle);
            }
            _loc1_++;
         }
         var_43.autoArrangeItems = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_46;
      }
      
      public function getType() : int
      {
         return _type;
      }
   }
}
