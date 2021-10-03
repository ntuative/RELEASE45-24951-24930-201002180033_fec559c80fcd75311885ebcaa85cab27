package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_102:String = "RSPE_VOTE_RESULT";
      
      public static const const_109:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1107:int = 0;
      
      private var var_932:String = "";
      
      private var var_638:Array;
      
      private var var_929:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_929 = [];
         var_638 = [];
         super(param1,param2,param7,param8);
         var_932 = param3;
         var_929 = param4;
         var_638 = param5;
         if(var_638 == null)
         {
            var_638 = [];
         }
         var_1107 = param6;
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
