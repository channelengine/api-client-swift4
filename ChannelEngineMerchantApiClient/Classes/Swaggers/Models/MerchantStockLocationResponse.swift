//
// MerchantStockLocationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantStockLocationResponse: Codable {

    /** The ChannelEngine id of the stock location. */
    public var _id: Int?
    /** The ChannelEngine name of the stock location */
    public var name: String?


    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case name = "Name"
    }


}
