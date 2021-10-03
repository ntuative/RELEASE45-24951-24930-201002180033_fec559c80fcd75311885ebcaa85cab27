package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_400:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_338:int = 0;
      
      public static const const_863:int = 2;
      
      public static const const_982:int = 1;
      
      public static const const_604:Boolean = false;
      
      public static const const_700:String = "";
      
      public static const const_352:int = 0;
      
      public static const const_398:int = 0;
      
      public static const const_339:int = 0;
       
      
      private var var_1686:int = 0;
      
      private var var_1683:String = "";
      
      private var var_1436:int = 0;
      
      private var var_1682:int = 0;
      
      private var var_1685:Number = 0;
      
      private var var_1681:int = 255;
      
      private var var_1684:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1686;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1436 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1685;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1682 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function get tag() : String
      {
         return var_1683;
      }
      
      public function get alpha() : int
      {
         return var_1681;
      }
      
      public function get ink() : int
      {
         return var_1436;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1685 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1682;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1684 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1684;
      }
      
      public function set tag(param1:String) : void
      {
         var_1683 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1681 = param1;
      }
   }
}
