//
// MerchantCancellationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MerchantCancellationRequest: Codable { 


    /** The unique cancellation reference used by the Merchant (sku). */
    public var merchantCancellationNo: String
    /** The unique order reference used by the Merchant (sku). */
    public var merchantOrderNo: String
    public var lines: [MerchantCancellationLineRequest]
    /** Reason for cancellation (text). */
    public var reason: String?
    public var reasonCode: MancoReason?

    public init(merchantCancellationNo: String, merchantOrderNo: String, lines: [MerchantCancellationLineRequest], reason: String? = nil, reasonCode: MancoReason? = nil) {
        self.merchantCancellationNo = merchantCancellationNo
        self.merchantOrderNo = merchantOrderNo
        self.lines = lines
        self.reason = reason
        self.reasonCode = reasonCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case merchantCancellationNo = "MerchantCancellationNo"
        case merchantOrderNo = "MerchantOrderNo"
        case lines = "Lines"
        case reason = "Reason"
        case reasonCode = "ReasonCode"
    }

}