package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_670:int = 8;
      
      public static const const_1584:int = 10;
      
      public static const const_1211:int = 6;
      
      private static var var_964:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1188:int = 0;
      
      public static const const_1556:int = 1;
      
      public static const const_1538:int = 2;
      
      public static const const_1500:int = 3;
      
      public static const const_1445:int = 4;
      
      public static const const_1554:int = 5;
      
      public static const const_1520:int = 9;
      
      public static const const_1431:int = 7;
       
      
      private var var_159:uint = 0;
      
      private var var_965:uint = 0;
      
      private var var_645:Date;
      
      private var var_1937:int = -1;
      
      private var parseFunc:Function;
      
      private var var_463:Boolean = false;
      
      private var var_2283:int = -1;
      
      private var var_1183:uint = 0;
      
      private var var_1936:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_770:uint;
      
      private var var_17:ByteArray;
      
      private var var_644:uint;
      
      private var var_1416:Boolean = false;
      
      private var var_2282:int = -1;
      
      private var var_1417:String = "2.0";
      
      private var var_160:Boolean = false;
      
      private var var_1938:Boolean = false;
      
      private var var_326:String;
      
      private var var_538:uint = 0;
      
      private var var_1182:int = 0;
      
      private var var_373:String = "";
      
      private var var_643:int = 8;
      
      private var var_1418:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_326 = param1;
         _extraFields = new Dictionary();
         var_17 = new ByteArray();
         var_17.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_538;
      }
      
      public function set filename(param1:String) : void
      {
         var_373 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_160 && false)
         {
            var_17.position = 0;
            if(var_964)
            {
               var_17.uncompress.apply(var_17,["deflate"]);
            }
            else
            {
               var_17.uncompress();
            }
            var_17.position = 0;
            var_160 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_373;
      }
      
      public function get date() : Date
      {
         return var_645;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1418)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_159 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_159)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1417;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_160)
         {
            uncompress();
         }
         var_17.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_17.readUTFBytes(var_17.bytesAvailable);
         }
         else
         {
            _loc3_ = var_17.readMultiByte(var_17.bytesAvailable,param2);
         }
         var_17.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_643 === const_670 && !var_1416)
         {
            if(var_964)
            {
               param1.readBytes(var_17,0,var_159);
            }
            else
            {
               if(!var_463)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_17.writeByte(120);
               _loc2_ = uint(~var_1937 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_17.writeByte(_loc2_);
               param1.readBytes(var_17,2,var_159);
               var_17.position = var_17.length;
               var_17.writeUnsignedInt(var_770);
            }
            var_160 = true;
         }
         else
         {
            if(var_643 != const_1188)
            {
               throw new Error("Compression method " + var_643 + " is not supported.");
            }
            param1.readBytes(var_17,0,var_159);
            var_160 = false;
         }
         var_17.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_965 + var_1183 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_17.length = 0;
         var_17.position = 0;
         var_160 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_17.writeUTFBytes(param1);
            }
            else
            {
               var_17.writeMultiByte(param1,param2);
            }
            var_644 = ChecksumUtil.CRC32(var_17);
            var_463 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_645 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1182 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1182 << 8 | 20);
         param1.writeShort(var_326 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_670);
         var _loc5_:Date = var_645 != null ? var_645 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_644);
         param1.writeUnsignedInt(var_159);
         param1.writeUnsignedInt(var_538);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_326 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_373);
         }
         else
         {
            _loc8_.writeMultiByte(var_373,var_326);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_463)
            {
               _loc16_ = var_160;
               if(_loc16_)
               {
                  uncompress();
               }
               var_770 = ChecksumUtil.Adler32(var_17,0,var_17.length);
               var_463 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_770);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_326 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1936);
            }
            else
            {
               _loc8_.writeMultiByte(var_1936,var_326);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_159 > 0)
         {
            if(var_964)
            {
               _loc13_ = 0;
               param1.writeBytes(var_17,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_17,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_159;
      }
      
      protected function compress() : void
      {
         if(!var_160)
         {
            if(false)
            {
               var_17.position = 0;
               var_538 = var_17.length;
               if(var_964)
               {
                  var_17.compress.apply(var_17,["deflate"]);
                  var_159 = var_17.length;
               }
               else
               {
                  var_17.compress();
                  var_159 = -6;
               }
               var_17.position = 0;
               var_160 = true;
            }
            else
            {
               var_159 = 0;
               var_538 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_965 + var_1183)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_326 == "utf-8")
         {
            var_373 = param1.readUTFBytes(var_965);
         }
         else
         {
            var_373 = param1.readMultiByte(var_965,var_326);
         }
         var _loc2_:uint = var_1183;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_373 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_770 = param1.readUnsignedInt();
               var_463 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1182 = _loc2_ >> 8;
         var_1417 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_643 = param1.readUnsignedShort();
         var_1416 = (_loc3_ & 1) !== 0;
         var_1418 = (_loc3_ & 8) !== 0;
         var_1938 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_326 = "utf-8";
         }
         if(var_643 === const_1211)
         {
            var_2282 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2283 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_643 === const_670)
         {
            var_1937 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_645 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_644 = param1.readUnsignedInt();
         var_159 = param1.readUnsignedInt();
         var_538 = param1.readUnsignedInt();
         var_965 = param1.readUnsignedShort();
         var_1183 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_17,0,param1.length);
            var_644 = ChecksumUtil.CRC32(var_17);
            var_463 = false;
         }
         else
         {
            var_17.length = 0;
            var_17.position = 0;
            var_160 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_373 + "\n  date:" + var_645 + "\n  sizeCompressed:" + var_159 + "\n  sizeUncompressed:" + var_538 + "\n  versionHost:" + var_1182 + "\n  versionNumber:" + var_1417 + "\n  compressionMethod:" + var_643 + "\n  encrypted:" + var_1416 + "\n  hasDataDescriptor:" + var_1418 + "\n  hasCompressedPatchedData:" + var_1938 + "\n  filenameEncoding:" + var_326 + "\n  crc32:" + var_644.toString(16) + "\n  adler32:" + var_770.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_160)
         {
            uncompress();
         }
         return var_17;
      }
   }
}
