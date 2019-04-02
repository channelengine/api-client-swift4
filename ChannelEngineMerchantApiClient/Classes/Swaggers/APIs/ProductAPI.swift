//
// ProductAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ProductAPI {
    /**
     Upsert Products
     
     - parameter products: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productCreate(products: [MerchantProductRequest], completion: @escaping ((_ data: SingleOfProductCreationResult?,_ error: Error?) -> Void)) {
        productCreateWithRequestBuilder(products: products).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Upsert Products
     - POST /v2/products
     - Upsert (update or create) products. The parent serves as the 'base' product of the children.  For example, the children could be different sizes or colors of the parent product.  For channels where every size and color are different products this does not make any difference  (the children will just be sent separately, while ignoring the parent).  But there are channels where the parent and the children need to be sent together, for example  when there is one product with a list of sizes. In this case all the product information is retrieved  from the parent product while the size list is generated from the children.    Note that the parent itself is a 'blueprint' of the child products and we do our best to make sure it  does not end up on the marketplaces itself. Only the children can be purchased.    It's not possible to nest parent and children more than one level (A parent can have many children,  but any child cannot itself also have children).    The supplied MerchantProductNo needs to be unique.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : {
    "AcceptedCount" : 6,
    "RejectedCount" : 0,
    "ProductMessages" : [ {
      "Errors" : [ "Errors", "Errors" ],
      "Reference" : "Reference",
      "Warnings" : [ "Warnings", "Warnings" ],
      "Name" : "Name"
    }, {
      "Errors" : [ "Errors", "Errors" ],
      "Reference" : "Reference",
      "Warnings" : [ "Warnings", "Warnings" ],
      "Name" : "Name"
    } ]
  },
  "StatusCode" : 1,
  "LogId" : 5,
  "Success" : true
}}]
     
     - parameter products: (body)  

     - returns: RequestBuilder<SingleOfProductCreationResult> 
     */
    open class func productCreateWithRequestBuilder(products: [MerchantProductRequest]) -> RequestBuilder<SingleOfProductCreationResult> {
        let path = "/v2/products"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: products)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SingleOfProductCreationResult>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete Product
     
     - parameter merchantProductNo: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productDelete(merchantProductNo: String, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        productDeleteWithRequestBuilder(merchantProductNo: merchantProductNo).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Delete Product
     - DELETE /v2/products/{merchantProductNo}
     - Delete a product based on the merchant reference.  Note that we do not really delete a product, as the product  might still be referenced by orders etc. Therefore, the references  used for this product cannot be reused. We do however deactivate the product  which means that it will not be sent to channels.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "LogId" : 6,
  "Success" : true
}}]
     
     - parameter merchantProductNo: (path)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func productDeleteWithRequestBuilder(merchantProductNo: String) -> RequestBuilder<ApiResponse> {
        var path = "/v2/products/{merchantProductNo}"
        let merchantProductNoPreEscape = "\(merchantProductNo)"
        let merchantProductNoPostEscape = merchantProductNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantProductNo}", with: merchantProductNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get Products
     
     - parameter search: (query) Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters. (optional)
     - parameter eanList: (query) Search products by submitting a list of EAN&#39;s (optional)
     - parameter merchantProductNoList: (query) Search products by submitting a list of MerchantProductNo&#39;s (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productGetByFilter(search: String? = nil, eanList: [String]? = nil, merchantProductNoList: [String]? = nil, page: Int? = nil, completion: @escaping ((_ data: CollectionOfMerchantProductResponse?,_ error: Error?) -> Void)) {
        productGetByFilterWithRequestBuilder(search: search, eanList: eanList, merchantProductNoList: merchantProductNoList, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get Products
     - GET /v2/products
     - Retrieve all products
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 7,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "MSRP" : 1.46581298050294517310021547018550336360931396484375,
    "Description" : "Description",
    "IsActive" : true,
    "Size" : "Size",
    "PurchasePrice" : 5.962133916683182377482808078639209270477294921875,
    "Url" : "Url",
    "Name" : "Name",
    "VatRateType" : "STANDARD",
    "ExtraImageUrl9" : "ExtraImageUrl9",
    "ExtraImageUrl8" : "ExtraImageUrl8",
    "ExtraImageUrl7" : "ExtraImageUrl7",
    "ExtraImageUrl6" : "ExtraImageUrl6",
    "ExtraImageUrl5" : "ExtraImageUrl5",
    "Color" : "Color",
    "ExtraImageUrl4" : "ExtraImageUrl4",
    "ImageUrl" : "ImageUrl",
    "ManufacturerProductNumber" : "ManufacturerProductNumber",
    "ExtraData" : [ {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    }, {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    } ],
    "Brand" : "Brand",
    "ShippingTime" : "ShippingTime",
    "Ean" : "Ean",
    "Price" : 6.02745618307040320615897144307382404804229736328125,
    "ShippingCost" : 5.63737665663332876420099637471139430999755859375,
    "ExtraImageUrl3" : "ExtraImageUrl3",
    "ExtraImageUrl2" : "ExtraImageUrl2",
    "ExtraImageUrl1" : "ExtraImageUrl1",
    "MerchantProductNo" : "MerchantProductNo",
    "CategoryTrail" : "CategoryTrail",
    "Stock" : 0
  }, {
    "MSRP" : 1.46581298050294517310021547018550336360931396484375,
    "Description" : "Description",
    "IsActive" : true,
    "Size" : "Size",
    "PurchasePrice" : 5.962133916683182377482808078639209270477294921875,
    "Url" : "Url",
    "Name" : "Name",
    "VatRateType" : "STANDARD",
    "ExtraImageUrl9" : "ExtraImageUrl9",
    "ExtraImageUrl8" : "ExtraImageUrl8",
    "ExtraImageUrl7" : "ExtraImageUrl7",
    "ExtraImageUrl6" : "ExtraImageUrl6",
    "ExtraImageUrl5" : "ExtraImageUrl5",
    "Color" : "Color",
    "ExtraImageUrl4" : "ExtraImageUrl4",
    "ImageUrl" : "ImageUrl",
    "ManufacturerProductNumber" : "ManufacturerProductNumber",
    "ExtraData" : [ {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    }, {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    } ],
    "Brand" : "Brand",
    "ShippingTime" : "ShippingTime",
    "Ean" : "Ean",
    "Price" : 6.02745618307040320615897144307382404804229736328125,
    "ShippingCost" : 5.63737665663332876420099637471139430999755859375,
    "ExtraImageUrl3" : "ExtraImageUrl3",
    "ExtraImageUrl2" : "ExtraImageUrl2",
    "ExtraImageUrl1" : "ExtraImageUrl1",
    "MerchantProductNo" : "MerchantProductNo",
    "CategoryTrail" : "CategoryTrail",
    "Stock" : 0
  } ],
  "ItemsPerPage" : 9,
  "Count" : 2,
  "StatusCode" : 3,
  "LogId" : 2,
  "Success" : true
}}]
     
     - parameter search: (query) Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters. (optional)
     - parameter eanList: (query) Search products by submitting a list of EAN&#39;s (optional)
     - parameter merchantProductNoList: (query) Search products by submitting a list of MerchantProductNo&#39;s (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)

     - returns: RequestBuilder<CollectionOfMerchantProductResponse> 
     */
    open class func productGetByFilterWithRequestBuilder(search: String? = nil, eanList: [String]? = nil, merchantProductNoList: [String]? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantProductResponse> {
        let path = "/v2/products"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "search": search, 
            "eanList": eanList, 
            "merchantProductNoList": merchantProductNoList, 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfMerchantProductResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get Product
     
     - parameter merchantProductNo: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productGetByMerchantProductNo(merchantProductNo: String, completion: @escaping ((_ data: SingleOfMerchantProductResponse?,_ error: Error?) -> Void)) {
        productGetByMerchantProductNoWithRequestBuilder(merchantProductNo: merchantProductNo).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get Product
     - GET /v2/products/{merchantProductNo}
     - Retrieve a product based on the merchant reference.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : {
    "MSRP" : 1.46581298050294517310021547018550336360931396484375,
    "Description" : "Description",
    "IsActive" : true,
    "Size" : "Size",
    "PurchasePrice" : 5.962133916683182377482808078639209270477294921875,
    "Url" : "Url",
    "Name" : "Name",
    "VatRateType" : "STANDARD",
    "ExtraImageUrl9" : "ExtraImageUrl9",
    "ExtraImageUrl8" : "ExtraImageUrl8",
    "ExtraImageUrl7" : "ExtraImageUrl7",
    "ExtraImageUrl6" : "ExtraImageUrl6",
    "ExtraImageUrl5" : "ExtraImageUrl5",
    "Color" : "Color",
    "ExtraImageUrl4" : "ExtraImageUrl4",
    "ImageUrl" : "ImageUrl",
    "ManufacturerProductNumber" : "ManufacturerProductNumber",
    "ExtraData" : [ {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    }, {
      "Type" : "TEXT",
      "IsPublic" : true,
      "Value" : "Value",
      "Key" : "Key"
    } ],
    "Brand" : "Brand",
    "ShippingTime" : "ShippingTime",
    "Ean" : "Ean",
    "Price" : 6.02745618307040320615897144307382404804229736328125,
    "ShippingCost" : 5.63737665663332876420099637471139430999755859375,
    "ExtraImageUrl3" : "ExtraImageUrl3",
    "ExtraImageUrl2" : "ExtraImageUrl2",
    "ExtraImageUrl1" : "ExtraImageUrl1",
    "MerchantProductNo" : "MerchantProductNo",
    "CategoryTrail" : "CategoryTrail",
    "Stock" : 0
  },
  "StatusCode" : 0,
  "LogId" : 6,
  "Success" : true
}}]
     
     - parameter merchantProductNo: (path)  

     - returns: RequestBuilder<SingleOfMerchantProductResponse> 
     */
    open class func productGetByMerchantProductNoWithRequestBuilder(merchantProductNo: String) -> RequestBuilder<SingleOfMerchantProductResponse> {
        var path = "/v2/products/{merchantProductNo}"
        let merchantProductNoPreEscape = "\(merchantProductNo)"
        let merchantProductNoPostEscape = merchantProductNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantProductNo}", with: merchantProductNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SingleOfMerchantProductResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
