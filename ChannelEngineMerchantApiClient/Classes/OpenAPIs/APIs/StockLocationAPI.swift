//
// StockLocationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class StockLocationAPI {
    /**
     Get the stock locations (or virtual warehouses).
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func stockLocationIndex(apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantStockLocationResponse?, _ error: Error?) -> Void)) {
        stockLocationIndexWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the stock locations (or virtual warehouses).
     - GET /v2/stocklocations
     - Get the different stock locations (or virtual warehouses) that are in use.<br />This may include stock locations for 'fulfillment by ... (Amazon/bol/CDiscount)' (FBA/LVB/FBC) solutions.<br />You can use the id's to get to stock of products in specific stock location, e.g. the FBA stock for the products.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - returns: RequestBuilder<CollectionOfMerchantStockLocationResponse> 
     */
    open class func stockLocationIndexWithRequestBuilder() -> RequestBuilder<CollectionOfMerchantStockLocationResponse> {
        let path = "/v2/stocklocations"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantStockLocationResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
