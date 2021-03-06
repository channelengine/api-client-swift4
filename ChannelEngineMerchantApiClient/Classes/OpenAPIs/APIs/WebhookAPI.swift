//
// WebhookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class WebhookAPI {
    /**
     Create Webhook.
     
     - parameter merchantWebhookRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhooksCreate(merchantWebhookRequest: MerchantWebhookRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        webhooksCreateWithRequestBuilder(merchantWebhookRequest: merchantWebhookRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Webhook.
     - POST /v2/webhooks
     - Create a new webhook in the ChannelEngine.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantWebhookRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func webhooksCreateWithRequestBuilder(merchantWebhookRequest: MerchantWebhookRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/webhooks"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantWebhookRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete Webhook.
     
     - parameter webhookName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhooksDelete(webhookName: String, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        webhooksDeleteWithRequestBuilder(webhookName: webhookName).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Webhook.
     - DELETE /v2/webhooks/{webhookName}
     - Delete a webhook based on the webhook name.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter webhookName: (path)  
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func webhooksDeleteWithRequestBuilder(webhookName: String) -> RequestBuilder<ApiResponse> {
        var path = "/v2/webhooks/{webhookName}"
        let webhookNamePreEscape = "\(APIHelper.mapValueToPathItem(webhookName))"
        let webhookNamePostEscape = webhookNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{webhookName}", with: webhookNamePostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Webhooks.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhooksGetAll(apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantWebhookResponse?, _ error: Error?) -> Void)) {
        webhooksGetAllWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Webhooks.
     - GET /v2/webhooks
     - Get all webhooks created in the ChannelEngine.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - returns: RequestBuilder<CollectionOfMerchantWebhookResponse> 
     */
    open class func webhooksGetAllWithRequestBuilder() -> RequestBuilder<CollectionOfMerchantWebhookResponse> {
        let path = "/v2/webhooks"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantWebhookResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update Webhook.
     
     - parameter merchantWebhookRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webhooksUpdate(merchantWebhookRequest: MerchantWebhookRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        webhooksUpdateWithRequestBuilder(merchantWebhookRequest: merchantWebhookRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Webhook.
     - PUT /v2/webhooks
     - Update a webhook in the ChannelEngine.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantWebhookRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func webhooksUpdateWithRequestBuilder(merchantWebhookRequest: MerchantWebhookRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/webhooks"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantWebhookRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
