package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_774:int;
      
      private var _right:int;
      
      private var var_776:int;
      
      private var var_775:int;
      
      private var var_170:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_776 = param1;
         var_775 = param2;
         _right = param3;
         var_774 = param4;
         var_170 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_774 = param1;
         var_170(this);
      }
      
      public function get left() : int
      {
         return var_776;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_776 == 0 && _right == 0 && var_775 == 0 && var_774 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_775 = param1;
         var_170(this);
      }
      
      public function get top() : int
      {
         return var_775;
      }
      
      public function set left(param1:int) : void
      {
         var_776 = param1;
         var_170(this);
      }
      
      public function get bottom() : int
      {
         return var_774;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_776,var_775,_right,var_774,param1);
      }
      
      public function dispose() : void
      {
         var_170 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_170(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
