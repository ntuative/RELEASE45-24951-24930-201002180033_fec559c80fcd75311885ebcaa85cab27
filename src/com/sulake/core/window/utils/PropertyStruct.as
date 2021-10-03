package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_679:String = "Rectangle";
      
      public static const const_37:String = "Boolean";
      
      public static const const_482:String = "Number";
      
      public static const const_43:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_565:String = "Point";
      
      public static const const_906:String = "Array";
      
      public static const const_987:String = "uint";
      
      public static const const_348:String = "hex";
      
      public static const const_818:String = "Map";
       
      
      private var var_533:String;
      
      private var var_157:Object;
      
      private var var_2281:Boolean;
      
      private var _type:String;
      
      private var var_1908:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_533 = param1;
         var_157 = param2;
         _type = param3;
         var_1908 = param4;
         var_2281 = param3 == const_818 || param3 == const_906 || param3 == const_565 || param3 == const_679;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_348:
               return "0x" + uint(var_157).toString(16);
            case const_37:
               return Boolean(var_157) == true ? "true" : "false";
            case const_565:
               return "Point(" + Point(var_157).x + ", " + Point(var_157).y + ")";
            case const_679:
               return "Rectangle(" + Rectangle(var_157).x + ", " + Rectangle(var_157).y + ", " + Rectangle(var_157).width + ", " + Rectangle(var_157).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_818:
               _loc3_ = var_157 as Map;
               _loc1_ = "<var key=\"" + var_533 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_906:
               _loc4_ = var_157 as Array;
               _loc1_ = "<var key=\"" + var_533 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_565:
               _loc5_ = var_157 as Point;
               _loc1_ = "<var key=\"" + var_533 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_679:
               _loc6_ = var_157 as Rectangle;
               _loc1_ = "<var key=\"" + var_533 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_348:
               _loc1_ = "<var key=\"" + var_533 + "\" value=\"" + "0x" + uint(var_157).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_533 + "\" value=\"" + var_157 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_157;
      }
      
      public function get valid() : Boolean
      {
         return var_1908;
      }
      
      public function get key() : String
      {
         return var_533;
      }
   }
}
