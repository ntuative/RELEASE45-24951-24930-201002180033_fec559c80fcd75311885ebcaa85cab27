package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ICheckBoxWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.RoomData;
   import com.sulake.habbo.communication.messages.incoming.moderation.RoomModerationData;
   import com.sulake.habbo.communication.messages.outgoing.moderator.GetModeratorRoomInfoMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.GetRoomChatlogMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModerateRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModeratorActionMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class RoomToolCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1040:ICheckBoxWindow;
      
      private var _data:RoomModerationData;
      
      private var var_391:int;
      
      private var var_44:ModerationManager;
      
      private var var_398:ITextFieldWindow;
      
      private var var_43:IItemListWindow;
      
      private var var_277:Boolean = true;
      
      private var var_762:IDropMenuWindow;
      
      private var var_706:ICheckBoxWindow;
      
      private var var_46:IFrameWindow;
      
      private var var_1041:ICheckBoxWindow;
      
      public function RoomToolCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_44 = param1;
         var_391 = param2;
      }
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function moveChildrenToColumn(param1:IWindowContainer, param2:int, param3:int) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ != null && _loc5_.visible && _loc5_.height > 0)
            {
               _loc5_.y = param2;
               param2 += _loc5_.height + param3;
            }
            _loc4_++;
         }
      }
      
      private function onSendMessage(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         act(false);
      }
      
      private function onChatlog(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_44.windowTracker.show(new ChatlogCtrl(new GetRoomChatlogMessageComposer(0,_data.flatId),var_44,WindowTracker.const_663,_data.flatId),var_46,false,false,true);
      }
      
      public function getId() : String
      {
         return "" + var_391;
      }
      
      private function setSendButtonState(param1:String) : void
      {
         var _loc2_:Boolean = _data != null && true;
         var _loc3_:IButtonWindow = IButtonWindow(var_46.findChildByName(param1));
         if(_loc2_ && var_44.initMsg.roomAlertPermission)
         {
            _loc3_.enable();
         }
         else
         {
            _loc3_.disable();
         }
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_44.initMsg.roomMessageTemplates.length);
         param1.populate(var_44.initMsg.roomMessageTemplates);
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_191)
         {
            return;
         }
         if(!var_277)
         {
            return;
         }
         var_398.text = "";
         var_277 = false;
      }
      
      private function getTagsAsString(param1:Array) : String
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            if(_loc2_ == "")
            {
               _loc2_ = _loc3_;
            }
            else
            {
               _loc2_ = _loc2_ + ", " + _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_44.messageHandler.removeRoomEnterListener(this);
         if(var_46 != null)
         {
            var_46.destroy();
            var_46 = null;
         }
         if(_data != null)
         {
            _data.dispose();
            _data = null;
         }
         var_44 = null;
         var_43 = null;
         var_762 = null;
         var_398 = null;
         var_706 = null;
         var_1040 = null;
         var_1041 = null;
      }
      
      private function refreshRoomData(param1:RoomData, param2:String) : void
      {
         var _loc3_:IWindowContainer = IWindowContainer(var_43.getListItemByName(param2));
         var _loc4_:IWindowContainer = IWindowContainer(_loc3_.findChildByName("room_data"));
         if(_loc4_ == null)
         {
            _loc4_ = IWindowContainer(var_44.getXmlWindow("roomtool_roomdata"));
            _loc3_.addChild(_loc4_);
         }
         if(!param1.exists)
         {
            var_43.removeListItem(_loc3_);
            var_43.removeListItem(var_43.getListItemByName("event_spacing"));
            return;
         }
         var _loc5_:ITextWindow = ITextWindow(_loc4_.findChildByName("name"));
         _loc5_.text = param1.name;
         _loc5_.height = _loc5_.textHeight + 5;
         var _loc6_:ITextWindow = ITextWindow(_loc4_.findChildByName("desc"));
         _loc6_.text = param1.desc;
         _loc6_.height = _loc6_.textHeight + 5;
         var _loc7_:IWindowContainer = IWindowContainer(_loc4_.findChildByName("tags_cont"));
         var _loc8_:ITextWindow = ITextWindow(_loc7_.findChildByName("tags_txt"));
         _loc8_.text = getTagsAsString(param1.tags);
         _loc8_.height = _loc8_.textHeight + 5;
         _loc7_.height = _loc8_.height;
         if(param1.tags.length < 1)
         {
            _loc4_.removeChild(_loc7_);
         }
         moveChildrenToColumn(_loc4_,_loc5_.y,0);
         _loc4_.height = getLowestPoint(_loc4_);
         _loc3_.height = _loc4_.height + 2 * _loc4_.y;
         Logger.log("XXXX: " + _loc3_.height + ", " + _loc4_.height + ", " + _loc5_.height + ", " + _loc6_.height + ", " + _loc7_.height + ", " + _loc8_.height);
      }
      
      public function onRoomChange() : void
      {
         setSendButtonState("send_caution_but");
         setSendButtonState("send_message_but");
      }
      
      private function setTxt(param1:String, param2:String) : void
      {
         var _loc3_:ITextWindow = ITextWindow(var_46.findChildByName(param1));
         _loc3_.text = param2;
      }
      
      public function onRoomInfo(param1:RoomModerationData) : void
      {
         Logger.log("GOT ROOM INFO: " + param1.flatId + ", " + var_391);
         if(param1.flatId != var_391)
         {
            Logger.log("NOT THE SAME FLAT: " + param1.flatId + ", " + var_391);
            return;
         }
         _data = param1;
         populate();
         var_44.messageHandler.removeRoomInfoListener(this);
         var_46.visible = true;
         var_44.messageHandler.addRoomEnterListener(this);
         Logger.log("TURNED VISIBLE: undefined, undefined");
      }
      
      private function onEditInHk(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit in hk clicked");
         var_44.openHkPage("roomadmin.url","undefined");
      }
      
      private function onEnterRoom(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Enter room clicked");
         var_44.goToRoom(_data.flatId);
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      private function onOwnerName(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_44.windowTracker.show(new UserInfoFrameCtrl(var_44,_data.ownerId),var_46,false,false,true);
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_46;
      }
      
      private function act(param1:Boolean) : void
      {
         if(var_277 || false)
         {
            var_44.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var _loc2_:int = determineAction(param1,var_706.isSelected);
         var_44.connection.send(new ModeratorActionMessageComposer(ModeratorActionMessageComposer.const_1366,_loc2_,var_398.text,"",""));
         if(false)
         {
            var_44.connection.send(new ModerateRoomMessageComposer(_data.flatId,var_1040.isSelected,var_1041.isSelected,var_706.isSelected));
         }
         this.dispose();
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_36)
         {
            return;
         }
         var _loc3_:String = var_44.initMsg.roomMessageTemplates["null"];
         if(_loc3_ != null)
         {
            var_277 = false;
            var_398.text = _loc3_;
         }
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.TYPE_ROOMINFO;
      }
      
      private function determineAction(param1:Boolean, param2:Boolean) : int
      {
         if(param2)
         {
            return !!param1 ? 0 : int(ModeratorActionMessageComposer.const_1135);
         }
         return !!param1 ? 0 : int(ModeratorActionMessageComposer.const_1118);
      }
      
      public function populate() : void
      {
         var_43 = IItemListWindow(var_46.findChildByName("list_cont"));
         var _loc1_:IWindow = var_46.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_398 = ITextFieldWindow(var_46.findChildByName("message_input"));
         var_398.procedure = onInputClick;
         var_762 = IDropMenuWindow(var_46.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_762);
         var_762.procedure = onSelectTemplate;
         var_706 = ICheckBoxWindow(var_46.findChildByName("kick_check"));
         var_1040 = ICheckBoxWindow(var_46.findChildByName("lock_check"));
         var_1041 = ICheckBoxWindow(var_46.findChildByName("changename_check"));
         refreshRoomData(_data.room,"room_cont");
         refreshRoomData(_data.event,"event_cont");
         setTxt("owner_name_txt",_data.ownerName);
         setTxt("owner_in_room_txt",!true ? "Yes" : "No");
         setTxt("user_count_txt","undefined");
         setTxt("has_event_txt",!!_data.event.exists ? "Yes" : "No");
         var_46.findChildByName("enter_room_but").procedure = onEnterRoom;
         var_46.findChildByName("chatlog_but").procedure = onChatlog;
         var_46.findChildByName("edit_in_hk_but").procedure = onEditInHk;
         var_46.findChildByName("bobba_filter_but").procedure = onBobbaFilter;
         var_46.findChildByName("send_caution_but").procedure = onSendCaution;
         var_46.findChildByName("send_message_but").procedure = onSendMessage;
         var_44.disableButton(var_44.initMsg.bobbaFilterPermission,var_46,"bobba_filter_but");
         var_44.disableButton(var_44.initMsg.chatlogsPermission,var_46,"chatlog_but");
         if(!var_44.initMsg.roomKickPermission)
         {
            var_706.disable();
         }
         var_46.findChildByName("owner_name_txt").procedure = onOwnerName;
         this.onRoomChange();
      }
      
      private function onSendCaution(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending caution...");
         act(true);
      }
      
      private function onBobbaFilter(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Bobba filter clicked");
         var_44.openHkPage("wordfilter.url","");
      }
      
      public function show() : void
      {
         var_46 = IFrameWindow(var_44.getXmlWindow("roomtool_frame"));
         var_44.messageHandler.addRoomInfoListener(this);
         var_44.connection.send(new GetModeratorRoomInfoMessageComposer(var_391));
         Logger.log("BEGINNING TO SHOW: " + var_391);
      }
   }
}
