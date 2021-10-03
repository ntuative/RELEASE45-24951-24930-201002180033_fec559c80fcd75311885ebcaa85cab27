package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2181:int;
      
      private var var_2176:int;
      
      private var var_2178:int;
      
      private var _userName:String;
      
      private var var_2179:int;
      
      private var var_2177:int;
      
      private var var_2180:int;
      
      private var _userId:int;
      
      private var var_681:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2177 = param1.readInteger();
         var_2179 = param1.readInteger();
         var_681 = param1.readBoolean();
         var_2178 = param1.readInteger();
         var_2176 = param1.readInteger();
         var_2181 = param1.readInteger();
         var_2180 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2180;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_681;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2179;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2176;
      }
      
      public function get cautionCount() : int
      {
         return var_2181;
      }
      
      public function get cfhCount() : int
      {
         return var_2178;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2177;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
