package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_893:String = "AssetLoaderEventUnload";
      
      public static const const_27:String = "AssetLoaderEventError";
      
      public static const const_955:String = "AssetLoaderEventOpen";
      
      public static const const_977:String = "AssetLoaderEventProgress";
      
      public static const const_912:String = "AssetLoaderEventStatus";
      
      public static const const_15:String = "AssetLoaderEventComplete";
       
      
      private var var_348:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_348 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_348;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_348);
      }
   }
}
