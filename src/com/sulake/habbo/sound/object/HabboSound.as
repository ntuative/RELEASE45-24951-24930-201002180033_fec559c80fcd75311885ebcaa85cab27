package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_921:SoundChannel = null;
      
      private var var_728:Boolean;
      
      private var var_922:Sound = null;
      
      private var var_603:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_922 = param1;
         var_922.addEventListener(Event.COMPLETE,onComplete);
         var_603 = 1;
         var_728 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_728;
      }
      
      public function stop() : Boolean
      {
         var_921.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_728 = false;
         var_921 = var_922.play(0);
         this.volume = var_603;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_603;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_921.position;
      }
      
      public function get length() : Number
      {
         return var_922.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_603 = param1;
         if(var_921 != null)
         {
            var_921.soundTransform = new SoundTransform(var_603);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_728 = true;
      }
   }
}
