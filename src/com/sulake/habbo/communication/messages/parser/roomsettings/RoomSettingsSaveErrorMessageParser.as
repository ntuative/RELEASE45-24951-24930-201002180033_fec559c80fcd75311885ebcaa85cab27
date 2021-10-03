package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1526:int = 9;
      
      public static const const_1425:int = 4;
      
      public static const const_1469:int = 1;
      
      public static const const_1228:int = 10;
      
      public static const const_1578:int = 2;
      
      public static const const_1254:int = 7;
      
      public static const const_1255:int = 11;
      
      public static const const_1521:int = 3;
      
      public static const const_1155:int = 8;
      
      public static const const_1285:int = 5;
      
      public static const const_1417:int = 6;
      
      public static const const_1324:int = 12;
       
      
      private var var_2105:String;
      
      private var _roomId:int;
      
      private var var_1178:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2105;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1178 = param1.readInteger();
         var_2105 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1178;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
