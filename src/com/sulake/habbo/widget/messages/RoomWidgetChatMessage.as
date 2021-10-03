package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_96:int = 0;
      
      public static const const_86:int = 1;
      
      public static const const_85:int = 2;
      
      public static const const_671:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1313:int = 0;
      
      private var var_1712:String = "";
      
      private var var_175:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_175 = param2;
         var_1313 = param3;
         var_1712 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1712;
      }
      
      public function get chatType() : int
      {
         return var_1313;
      }
      
      public function get text() : String
      {
         return var_175;
      }
   }
}
