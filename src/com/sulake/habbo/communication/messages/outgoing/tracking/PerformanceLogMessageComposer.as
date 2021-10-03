package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1030:int = 0;
      
      private var var_1125:int = 0;
      
      private var var_1700:String = "";
      
      private var var_1029:int = 0;
      
      private var var_1699:String = "";
      
      private var var_1697:int = 0;
      
      private var var_1532:String = "";
      
      private var var_1702:int = 0;
      
      private var var_1701:int = 0;
      
      private var var_1703:String = "";
      
      private var var_1698:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1702 = param1;
         var_1703 = param2;
         var_1532 = param3;
         var_1700 = param4;
         var_1699 = param5;
         if(param6)
         {
            var_1125 = 1;
         }
         else
         {
            var_1125 = 0;
         }
         var_1697 = param7;
         var_1701 = param8;
         var_1029 = param9;
         var_1698 = param10;
         var_1030 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1702,var_1703,var_1532,var_1700,var_1699,var_1125,var_1697,var_1701,var_1029,var_1698,var_1030];
      }
      
      public function dispose() : void
      {
      }
   }
}
