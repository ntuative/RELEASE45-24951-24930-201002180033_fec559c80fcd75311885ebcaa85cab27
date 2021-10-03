package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_102:String = "RWPUE_VOTE_RESULT";
      
      public static const const_109:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1107:int;
      
      private var var_932:String;
      
      private var var_638:Array;
      
      private var var_929:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_932 = param2;
         var_929 = param3;
         var_638 = param4;
         if(var_638 == null)
         {
            var_638 = [];
         }
         var_1107 = param5;
      }
      
      public function get votes() : Array
      {
         return var_638.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1107;
      }
      
      public function get question() : String
      {
         return var_932;
      }
      
      public function get choices() : Array
      {
         return var_929.slice();
      }
   }
}
