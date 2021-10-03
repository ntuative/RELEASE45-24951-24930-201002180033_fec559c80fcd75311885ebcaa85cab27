package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1481:BigInteger;
      
      private var var_968:BigInteger;
      
      private var var_2096:BigInteger;
      
      private var var_1482:BigInteger;
      
      private var var_2097:BigInteger;
      
      private var var_2093:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1481 = param1;
         var_2096 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2097.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1482 = new BigInteger();
         var_1482.fromRadix(param1,param2);
         var_2097 = var_1482.modPow(var_968,var_1481);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2093.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_968 = new BigInteger();
         var_968.fromRadix(param1,param2);
         var_2093 = var_2096.modPow(var_968,var_1481);
         return true;
      }
   }
}
