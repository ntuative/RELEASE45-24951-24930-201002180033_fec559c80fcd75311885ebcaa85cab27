package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_768:String = "price_type_none";
      
      public static const const_453:String = "pricing_model_multi";
      
      public static const const_442:String = "price_type_credits";
      
      public static const const_435:String = "price_type_credits_and_pixels";
      
      public static const const_362:String = "pricing_model_bundle";
      
      public static const const_430:String = "pricing_model_single";
      
      public static const const_698:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1181:String = "pricing_model_unknown";
      
      public static const const_342:String = "price_type_pixels";
       
      
      private var var_871:int;
      
      private var _offerId:int;
      
      private var var_870:int;
      
      private var var_407:String;
      
      private var var_582:String;
      
      private var var_2210:int;
      
      private var var_670:ICatalogPage;
      
      private var var_1307:String;
      
      private var var_408:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1307 = param1.localizationId;
         var_871 = param1.priceInCredits;
         var_870 = param1.priceInPixels;
         var_670 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_407;
      }
      
      public function get page() : ICatalogPage
      {
         return var_670;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2210 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_408;
      }
      
      public function get localizationId() : String
      {
         return var_1307;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_870;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1307 = "";
         var_871 = 0;
         var_870 = 0;
         var_670 = null;
         if(var_408 != null)
         {
            var_408.dispose();
            var_408 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_582;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2210;
      }
      
      public function get priceInCredits() : int
      {
         return var_871;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_407 = const_430;
            }
            else
            {
               var_407 = const_453;
            }
         }
         else if(param1.length > 1)
         {
            var_407 = const_362;
         }
         else
         {
            var_407 = const_1181;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_407)
         {
            case const_430:
               var_408 = new SingleProductContainer(this,param1);
               break;
            case const_453:
               var_408 = new MultiProductContainer(this,param1);
               break;
            case const_362:
               var_408 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_407);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_871 > 0 && var_870 > 0)
         {
            var_582 = const_435;
         }
         else if(var_871 > 0)
         {
            var_582 = const_442;
         }
         else if(var_870 > 0)
         {
            var_582 = const_342;
         }
         else
         {
            var_582 = const_768;
         }
      }
   }
}
