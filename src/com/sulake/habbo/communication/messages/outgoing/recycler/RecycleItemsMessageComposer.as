package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_817:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_817 = new Array();
         var_817.push(param1.length);
         var_817 = var_817.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_817;
      }
   }
}
