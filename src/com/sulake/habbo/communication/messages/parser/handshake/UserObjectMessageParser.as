package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_560:String;
      
      private var var_2289:String;
      
      private var var_2288:int;
      
      private var var_2286:int;
      
      private var var_1293:String;
      
      private var var_1226:String;
      
      private var _name:String;
      
      private var var_457:int;
      
      private var var_754:int;
      
      private var var_2290:int;
      
      private var _respectTotal:int;
      
      private var var_2287:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2286;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1226;
      }
      
      public function get customData() : String
      {
         return this.var_2289;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_457;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2288;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2287;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1293;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_560 = param1.readString();
         this.var_1293 = param1.readString();
         this.var_2289 = param1.readString();
         this.var_1226 = param1.readString();
         this.var_2290 = param1.readInteger();
         this.var_2287 = param1.readString();
         this.var_2288 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_754 = param1.readInteger();
         this.var_457 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2290;
      }
      
      public function get respectLeft() : int
      {
         return this.var_754;
      }
   }
}
