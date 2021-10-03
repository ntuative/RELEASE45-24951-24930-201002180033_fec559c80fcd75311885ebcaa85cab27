package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_403:uint;
      
      private var var_1027:IUnknown;
      
      private var var_1286:String;
      
      private var var_1028:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1028 = param1;
         var_1286 = getQualifiedClassName(var_1028);
         var_1027 = param2;
         var_403 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1028;
      }
      
      public function get disposed() : Boolean
      {
         return var_1027 == null;
      }
      
      public function get references() : uint
      {
         return var_403;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_403) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1027;
      }
      
      public function get iis() : String
      {
         return var_1286;
      }
      
      public function reserve() : uint
      {
         return ++var_403;
      }
      
      public function dispose() : void
      {
         var_1028 = null;
         var_1286 = null;
         var_1027 = null;
         var_403 = 0;
      }
   }
}
