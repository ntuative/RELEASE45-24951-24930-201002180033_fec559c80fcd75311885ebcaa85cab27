package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1437:int = -1;
      
      private var var_1198:Boolean;
      
      private var var_1197:String;
      
      private var var_1984:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1984 = String(param1["set-type"]);
         var_1197 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1198 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1437 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1197;
      }
      
      public function get staticId() : int
      {
         return var_1437;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1437 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1198;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1198 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1197 = param1;
      }
      
      public function get setType() : String
      {
         return var_1984;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
