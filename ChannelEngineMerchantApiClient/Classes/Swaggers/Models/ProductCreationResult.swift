//
// ProductCreationResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProductCreationResult: Codable {

    public var rejectedCount: Int?
    public var acceptedCount: Int?
    /** Messages about the rejected products. */
    public var productMessages: [ProductMessage]?


    public enum CodingKeys: String, CodingKey { 
        case rejectedCount = "RejectedCount"
        case acceptedCount = "AcceptedCount"
        case productMessages = "ProductMessages"
    }


}
