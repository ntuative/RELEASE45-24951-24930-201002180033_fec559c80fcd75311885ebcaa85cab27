package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_500:int = 2;
      
      public static const const_857:int = 6;
      
      public static const const_546:int = 1;
      
      public static const const_619:int = 3;
      
      public static const const_947:int = 4;
      
      public static const const_493:int = 5;
       
      
      private var var_2003:String;
      
      private var var_1048:int;
      
      private var var_2004:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1048 = param2;
         var_2004 = param3;
         var_2003 = param4;
      }
      
      public function get time() : String
      {
         return var_2003;
      }
      
      public function get senderId() : int
      {
         return var_1048;
      }
      
      public function get messageText() : String
      {
         return var_2004;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
