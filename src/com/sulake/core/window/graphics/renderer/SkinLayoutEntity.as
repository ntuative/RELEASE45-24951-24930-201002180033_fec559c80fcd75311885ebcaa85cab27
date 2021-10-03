package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_224:uint = 1;
      
      public static const const_393:uint = 0;
      
      public static const const_949:uint = 8;
      
      public static const const_240:uint = 4;
      
      public static const const_349:uint = 2;
       
      
      private var var_400:uint;
      
      private var var_2163:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2164:uint;
      
      private var var_91:Rectangle;
      
      private var var_593:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_91 = param3;
         _color = param4;
         var_400 = param5;
         var_2163 = param6;
         var_2164 = param7;
         var_593 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2163;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_400;
      }
      
      public function get scaleV() : uint
      {
         return var_2164;
      }
      
      public function get tags() : Array
      {
         return var_593;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_91 = null;
         var_593 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_91;
      }
   }
}
