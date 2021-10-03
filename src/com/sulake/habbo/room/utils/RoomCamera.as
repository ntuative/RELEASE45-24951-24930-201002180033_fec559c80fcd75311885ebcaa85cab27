package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_323:Number = 0.5;
      
      private static const const_729:int = 3;
      
      private static const const_1032:Number = 1;
       
      
      private var var_1744:Boolean = false;
      
      private var var_1749:Boolean = false;
      
      private var var_945:int = 0;
      
      private var var_238:Vector3d = null;
      
      private var var_1743:int = 0;
      
      private var var_1747:int = 0;
      
      private var var_1750:Boolean = false;
      
      private var var_1742:int = -2;
      
      private var var_1745:Boolean = false;
      
      private var var_1746:int = 0;
      
      private var var_1748:int = -1;
      
      private var var_366:Vector3d = null;
      
      private var var_1751:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1743;
      }
      
      public function get targetId() : int
      {
         return var_1748;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1746 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1743 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1744 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1748 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1749 = param1;
      }
      
      public function dispose() : void
      {
         var_366 = null;
         var_238 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_366 == null)
         {
            var_366 = new Vector3d();
         }
         var_366.assign(param1);
         var_945 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1742;
      }
      
      public function get screenHt() : int
      {
         return var_1751;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1747 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_238;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1751 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1746;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1744;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1749;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_366 != null && var_238 != null)
         {
            ++var_945;
            _loc2_ = Vector3d.dif(var_366,var_238);
            if(_loc2_.length <= const_323)
            {
               var_238 = var_366;
               var_366 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_323 * (const_729 + 1))
               {
                  _loc2_.mul(const_323);
               }
               else if(var_945 <= const_729)
               {
                  _loc2_.mul(const_323);
               }
               else
               {
                  _loc2_.mul(const_1032);
               }
               var_238 = Vector3d.sum(var_238,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1750 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1747;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1745 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1742 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_238 != null)
         {
            return;
         }
         var_238 = new Vector3d();
         var_238.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1750;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1745;
      }
   }
}
