package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_575:String = "RWUAM_RESPECT_USER";
      
      public static const const_625:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_711:String = "RWUAM_START_TRADING";
      
      public static const const_511:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_559:String = "RWUAM_WHISPER_USER";
      
      public static const const_489:String = "RWUAM_IGNORE_USER";
      
      public static const const_450:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_543:String = "RWUAM_BAN_USER";
      
      public static const const_646:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_347:String = "RWUAM_KICK_USER";
      
      public static const const_491:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_544:String = " RWUAM_RESPECT_PET";
      
      public static const const_364:String = "RWUAM_KICK_BOT";
      
      public static const const_1292:String = "RWUAM_TRAIN_PET";
      
      public static const const_634:String = "RWUAM_PICKUP_PET";
      
      public static const const_563:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_704:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
