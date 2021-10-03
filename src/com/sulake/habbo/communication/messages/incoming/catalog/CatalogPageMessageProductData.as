package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_195:String = "e";
      
      public static const const_60:String = "i";
      
      public static const const_56:String = "s";
       
      
      private var var_896:String;
      
      private var var_1071:String;
      
      private var var_1068:int;
      
      private var var_1974:int;
      
      private var var_897:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1071 = param1.readString();
         var_1974 = param1.readInteger();
         var_896 = param1.readString();
         var_897 = param1.readInteger();
         var_1068 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_897;
      }
      
      public function get productType() : String
      {
         return var_1071;
      }
      
      public function get expiration() : int
      {
         return var_1068;
      }
      
      public function get furniClassId() : int
      {
         return var_1974;
      }
      
      public function get extraParam() : String
      {
         return var_896;
      }
   }
}
