package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_358:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_486:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_662:String;
      
      private var var_136:int;
      
      private var var_175:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_136 = param2;
         var_175 = param3;
         var_662 = param4;
      }
      
      public function get objectId() : int
      {
         return var_136;
      }
      
      public function get text() : String
      {
         return var_175;
      }
      
      public function get colorHex() : String
      {
         return var_662;
      }
   }
}
