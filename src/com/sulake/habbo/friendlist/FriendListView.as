package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1386:String = "noconvinfo";
      
      private static const const_1387:String = "messageinput";
       
      
      private var var_1376:int = -1;
      
      private var var_853:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1377:int = -1;
      
      private var var_1123:ITextWindow;
      
      private var var_1122:FriendListTabsView;
      
      private var var_11:IFrameWindow;
      
      private var var_263:IWindowContainer;
      
      private var var_1696:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1122 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_11 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_11.findChildByTag("close").procedure = onWindowClose;
         var_853 = IWindowContainer(var_11.content.findChildByName("main_content"));
         var_263 = IWindowContainer(var_11.content.findChildByName("footer"));
         var_1122.prepare(var_853);
         var_11.procedure = onWindow;
         var_11.content.setParamFlag(HabboWindowParam.const_884,false);
         var_11.content.setParamFlag(HabboWindowParam.const_1131,true);
         var_11.header.setParamFlag(HabboWindowParam.const_594,false);
         var_11.header.setParamFlag(HabboWindowParam.const_974,true);
         var_11.content.setParamFlag(HabboWindowParam.const_594,false);
         var_11.content.setParamFlag(HabboWindowParam.const_974,true);
         var_11.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1123 = ITextWindow(var_11.findChildByName("info_text"));
         var_1123.text = "";
         _friendList.refreshButton(var_11,"open_edit_ctgs",true,null,0);
         var_11.title.color = 4294623744;
         var_11.title.textColor = 4287851525;
         refresh("prepare");
         var_11.height = 350;
         var_11.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_11.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_11)
         {
            var_1123.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1123.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_11 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_28,HabboToolbarIconEnum.FRIENDLIST,var_11));
         }
         else
         {
            var_11.visible = true;
            var_11.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_11.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1122;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1696 = true;
         var_263.visible = false;
         var_263.y = Util.getLowestPoint(var_11.content);
         var_263.width = _friendList.tabs.windowWidth;
         var_263.visible = true;
         var_11.content.height = Util.getLowestPoint(var_11.content);
         var_11.content.width = _friendList.tabs.windowWidth - 10;
         var_11.header.width = _friendList.tabs.windowWidth - 10;
         var_11.height = var_11.content.height + 30;
         var_11.width = _friendList.tabs.windowWidth;
         this.var_1696 = false;
         var_11.scaler.setParamFlag(HabboWindowParam.const_508,false);
         var_11.scaler.setParamFlag(HabboWindowParam.const_782,this._friendList.tabs.findSelectedTab() != null);
         var_11.scaler.setParamFlag(HabboWindowParam.const_594,false);
         var_11.scaler.setParamFlag(HabboWindowParam.const_884,false);
         var_11.scaler.x = 0 - var_11.scaler.width;
         var_11.scaler.y = 0 - var_11.scaler.height;
         var_1377 = var_11.height;
         var_1376 = var_11.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_11 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_11 == null)
         {
            return;
         }
         var_1122.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_11;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_26 || param2 != var_11)
         {
            return;
         }
         if(this.var_1696)
         {
            return;
         }
         var _loc3_:int = var_1377 == -1 ? 0 : int(0 - var_1377);
         var _loc4_:int = var_1376 == -1 ? 0 : int(0 - var_1376);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_11 != null)
         {
            this.var_11.visible = false;
         }
      }
   }
}
