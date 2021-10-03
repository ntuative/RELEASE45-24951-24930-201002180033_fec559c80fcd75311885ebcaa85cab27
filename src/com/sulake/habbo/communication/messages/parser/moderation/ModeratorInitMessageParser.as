package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1927:Boolean;
      
      private var var_1414:Array;
      
      private var var_1923:Boolean;
      
      private var var_1928:Boolean;
      
      private var var_1929:Boolean;
      
      private var var_148:Array;
      
      private var var_1926:Boolean;
      
      private var var_1924:Boolean;
      
      private var var_1415:Array;
      
      private var var_1925:Boolean;
      
      private var var_1922:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1922;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1927;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1923;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1926;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1924;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1414;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_148 = [];
         var_1414 = [];
         _roomMessageTemplates = [];
         var_1415 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_148.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1414.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1415.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1926 = param1.readBoolean();
         var_1929 = param1.readBoolean();
         var_1923 = param1.readBoolean();
         var_1928 = param1.readBoolean();
         var_1922 = param1.readBoolean();
         var_1924 = param1.readBoolean();
         var_1927 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1925 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1928;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1415;
      }
      
      public function get issues() : Array
      {
         return var_148;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1925;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1929;
      }
   }
}
