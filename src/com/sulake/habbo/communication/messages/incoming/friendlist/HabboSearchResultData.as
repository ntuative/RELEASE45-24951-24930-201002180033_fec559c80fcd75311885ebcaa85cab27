package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2277:Boolean;
      
      private var var_2280:int;
      
      private var var_2279:Boolean;
      
      private var var_1490:String;
      
      private var var_1226:String;
      
      private var var_2042:int;
      
      private var var_2116:String;
      
      private var var_2278:String;
      
      private var var_2115:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2042 = param1.readInteger();
         this.var_1490 = param1.readString();
         this.var_2116 = param1.readString();
         this.var_2277 = param1.readBoolean();
         this.var_2279 = param1.readBoolean();
         param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2115 = param1.readString();
         this.var_2278 = param1.readString();
         this.var_1226 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1226;
      }
      
      public function get avatarName() : String
      {
         return this.var_1490;
      }
      
      public function get avatarId() : int
      {
         return this.var_2042;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2277;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2278;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2115;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2279;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2116;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2280;
      }
   }
}
