package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1107:int;
      
      private var var_932:String;
      
      private var var_638:Array;
      
      private var var_929:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_638.slice();
      }
      
      public function flush() : Boolean
      {
         var_932 = "";
         var_929 = [];
         var_638 = [];
         var_1107 = 0;
         return true;
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
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_932 = param1.readString();
         var_929 = [];
         var_638 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_929.push(param1.readString());
            var_638.push(param1.readInteger());
            _loc3_++;
         }
         var_1107 = param1.readInteger();
         return true;
      }
   }
}
