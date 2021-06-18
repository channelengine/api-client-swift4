//
// MerchantReturnLineUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct MerchantReturnLineUpdateRequest: Codable, Hashable {

    /** The unique product reference used by the Merchant (sku). */
    public var merchantProductNo: String
    /** The amount of items that have been accepted. */
    public var acceptedQuantity: Int
    /** The amount of items that have been rejected. */
    public var rejectedQuantity: Int

    public init(merchantProductNo: String, acceptedQuantity: Int, rejectedQuantity: Int) {
        self.merchantProductNo = merchantProductNo
        self.acceptedQuantity = acceptedQuantity
        self.rejectedQuantity = rejectedQuantity
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantProductNo = "MerchantProductNo"
        case acceptedQuantity = "AcceptedQuantity"
        case rejectedQuantity = "RejectedQuantity"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(merchantProductNo, forKey: .merchantProductNo)
        try container.encode(acceptedQuantity, forKey: .acceptedQuantity)
        try container.encode(rejectedQuantity, forKey: .rejectedQuantity)
    }



}
