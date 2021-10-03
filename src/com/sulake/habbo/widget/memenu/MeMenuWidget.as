package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_484:String = "me_menu_settings_view";
      
      private static const const_758:int = 10;
      
      public static const const_658:String = "me_menu_effects_view";
      
      public static const const_104:String = "me_menu_top_view";
      
      public static const const_1148:String = "me_menu_rooms_view";
      
      public static const const_881:String = "me_menu_dance_moves_view";
      
      public static const const_255:String = "me_menu_my_clothes_view";
       
      
      private var var_2202:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1539:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_2201:Boolean = false;
      
      private var var_264:Boolean = false;
      
      private var var_2205:int = 0;
      
      private var var_2118:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_581:Boolean = false;
      
      private var var_88:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1302:int = 0;
      
      private var var_2203:Boolean = false;
      
      private var var_1039:Point;
      
      private var var_25:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1039 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2203 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_104);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_681,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_591,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_684,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_526,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_293,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_507,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_356,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_808,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_184,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_209,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_542,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_203,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_269,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_82,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_385,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_155,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_581;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_264)
         {
            return;
         }
         if(var_25.window.name == const_484)
         {
            (var_25 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1302 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1539 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1539.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_264 && var_25.window.name == const_255))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_617);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_681,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_591,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_684,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_526,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_293,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_184,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_209,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_542,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_507,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_356,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_808,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_203,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_269,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_385,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_82,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_155,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_25 != null)
         {
            var_25.dispose();
            var_25 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2202;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_2118 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_88 != null)
         {
            var_88.dispose();
            var_88 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_2201;
      }
      
      public function get creditBalance() : int
      {
         return var_1539;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_385:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_264 + " view: " + var_25.window.name);
               if(var_264 != true || var_25.window.name != const_104)
               {
                  return;
               }
               (var_25 as MeMenuMainView).setIconAssets("clothes_icon",const_104,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_82:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_2118 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2204;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_581 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_581 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1302 > 0;
         var_1302 = param1.daysLeft;
         var_2204 = param1.periodsLeft;
         var_2205 = param1.pastPeriods;
         var_2202 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_25 != null)
            {
               changeView(var_25.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2201 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_25 != null && var_25.window.name != const_255)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_25 != null && var_25.window.name == const_255)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_995)
            {
               var_88 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1124);
            }
            else
            {
               var_88 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_341);
            }
            _loc2_ = _mainContainer.getChildByName(var_25.window.name);
            if(_loc2_ != null)
            {
               var_88.window.x = _loc2_.width + const_758;
               _mainContainer.addChild(var_88.window);
               _mainContainer.width = var_88.window.x + var_88.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_581 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_581 = true;
            }
         }
         if(var_25 != null && var_25.window.name == const_658)
         {
            (var_25 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2205;
      }
      
      public function get habboClubDays() : int
      {
         return var_1302;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1142,HabboWindowStyle.const_846,HabboWindowParam.const_23,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_264 = !var_264;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_264 = false;
               break;
            default:
               return;
         }
         if(var_264)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_520);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_25 != null)
         {
            _mainContainer.removeChild(var_25.window);
            var_25.dispose();
            var_25 = null;
         }
         var_264 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_25 != null && var_25.window.name == const_255)
         {
            if(var_88 != null)
            {
               var_88.dispose();
               var_88 = null;
            }
            changeView(const_104);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2203;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_88 != null)
         {
            var_88.dispose();
            var_88 = null;
         }
         switch(param1)
         {
            case const_104:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_658:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_881:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_255:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1148:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_484:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_25 != null)
            {
               _mainContainer.removeChild(var_25.window);
               var_25.dispose();
               var_25 = null;
            }
            var_25 = _loc2_;
            var_25.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_25 != null)
         {
            var_1039.x = var_25.window.width + 10;
            var_1039.y = var_25.window.height;
            var_25.window.x = 5;
            var_25.window.y = 0;
            _mainContainer.width = var_1039.x;
            _mainContainer.height = var_1039.y;
            if(var_88 != null)
            {
               _mainContainer.width = var_88.window.x + var_88.window.width + const_758;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_104);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_524);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_264 = true;
      }
   }
}
