package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1141:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1734:Boolean = false;
      
      private var var_1733:String = "normal";
      
      private var var_1103:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_307:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1681:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_956:Boolean = false;
      
      private var var_955:Boolean = false;
      
      private var var_1732:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1731:Boolean = true;
      
      private var _width:int = 0;
      
      private var var_970:Number = 0;
      
      private var var_1683:String = "";
      
      private var var_859:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1141++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_955 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1732 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_859 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1733 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1683 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1103 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1734;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get uid() : int
      {
         return _instanceId;
      }
      
      public function get relativeDepth() : Number
      {
         return var_970;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1681;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1731 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_307;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1734 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_956;
      }
      
      public function get flipV() : Boolean
      {
         return var_955;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1732;
      }
      
      public function get blendMode() : String
      {
         return var_1733;
      }
      
      public function get tag() : String
      {
         return var_1683;
      }
      
      public function get assetName() : String
      {
         return var_1103;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_970 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1731;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1681 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_859 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_307 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_859;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_956 = param1;
         ++_updateID;
      }
   }
}
