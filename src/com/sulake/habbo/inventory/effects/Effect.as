package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1951:Date;
      
      private var var_1184:Boolean = false;
      
      private var _type:int;
      
      private var var_346:BitmapData;
      
      private var var_264:Boolean = false;
      
      private var var_1175:int;
      
      private var var_540:int = 1;
      
      private var var_966:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_346;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_540;
         if(var_540 < 0)
         {
            var_540 = 0;
         }
         var_966 = var_1175;
         var_264 = false;
         var_1184 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_966 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_264;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_346 = param1;
      }
      
      public function get duration() : int
      {
         return var_1175;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1184;
      }
      
      public function get effectsInInventory() : int
      {
         return var_540;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_346;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_264)
         {
            var_1951 = new Date();
         }
         var_264 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_540 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_264)
         {
            _loc1_ = var_966 - (new Date().valueOf() - var_1951.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_966;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1184 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1175 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
