package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1657:int;
      
      private var var_1660:int = 0;
      
      private var var_1661:String;
      
      private var var_1658:int;
      
      private var var_1659:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1657 = param1;
         var_1658 = param2;
         var_1659 = param3;
         var_1661 = param4;
      }
      
      public function get length() : int
      {
         return var_1658;
      }
      
      public function get name() : String
      {
         return var_1659;
      }
      
      public function get creator() : String
      {
         return var_1661;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1660;
      }
      
      public function get id() : int
      {
         return var_1657;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1660 = param1;
      }
   }
}
