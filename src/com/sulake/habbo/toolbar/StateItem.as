package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1259:Boolean;
      
      private var var_1679:String;
      
      private var _frames:XMLList;
      
      private var var_1034:String = "-1";
      
      private var var_714:String;
      
      private var var_169:int = 120;
      
      private var var_1120:String = "-1";
      
      private var var_1119:String;
      
      private var var_1680:Boolean;
      
      private var var_1372:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1259 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1680 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_169 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1119 = param1.@namebase;
         }
         else
         {
            var_1119 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1034 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1120 = param1.@nextState;
         }
         else
         {
            var_1120 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1372 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1679 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_714 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1034 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1680;
      }
      
      public function get defaultState() : String
      {
         return var_1372;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1372 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1679;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_169;
      }
      
      public function get loop() : Boolean
      {
         return var_1259;
      }
      
      public function get nextState() : String
      {
         return var_1120;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_714;
      }
      
      public function get stateOver() : String
      {
         return var_1034;
      }
      
      public function get nameBase() : String
      {
         return var_1119;
      }
   }
}
