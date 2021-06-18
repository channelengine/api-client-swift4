//
// NotificationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum NotificationType: String, Codable, CaseIterable {
    case channelOrderAnonymizedByRequest = "CHANNEL_ORDER_ANONYMIZED_BY_REQUEST"
    case channelOrderAnonymizedAutomatically = "CHANNEL_ORDER_ANONYMIZED_AUTOMATICALLY"
    case channelOrderCorrectionNeeded = "CHANNEL_ORDER_CORRECTION_NEEDED"
    case channelOrderDuplicateLine = "CHANNEL_ORDER_DUPLICATE_LINE"
    case channelOrderInvoiceSendFailed = "CHANNEL_ORDER_INVOICE_SEND_FAILED"
    case channelOrderImportFailed = "CHANNEL_ORDER_IMPORT_FAILED"
    case channelOrderNew = "CHANNEL_ORDER_NEW"
    case channelOrderOverdue = "CHANNEL_ORDER_OVERDUE"
    case channelOrderTooLongOnNew = "CHANNEL_ORDER_TOO_LONG_ON_NEW"
    case channelProductDataExportFailed = "CHANNEL_PRODUCT_DATA_EXPORT_FAILED"
    case channelProductDataImportFailed = "CHANNEL_PRODUCT_DATA_IMPORT_FAILED"
    case channelProductOfferExportFailed = "CHANNEL_PRODUCT_OFFER_EXPORT_FAILED"
    case channelReturnExportFailed = "CHANNEL_RETURN_EXPORT_FAILED"
    case channelReturnImportFailed = "CHANNEL_RETURN_IMPORT_FAILED"
    case channelReturnNew = "CHANNEL_RETURN_NEW"
    case channelReturnOverdue = "CHANNEL_RETURN_OVERDUE"
    case channelRefundExportFailed = "CHANNEL_REFUND_EXPORT_FAILED"
    case channelRefundLineItemsError = "CHANNEL_REFUND_LINE_ITEMS_ERROR"
    case channelShipmentImportFailed = "CHANNEL_SHIPMENT_IMPORT_FAILED"
    case channelShipmentImportStatusFailed = "CHANNEL_SHIPMENT_IMPORT_STATUS_FAILED"
    case channelShipmentExportFailed = "CHANNEL_SHIPMENT_EXPORT_FAILED"
    case channelShipmentImportMissingLineFailed = "CHANNEL_SHIPMENT_IMPORT_MISSING_LINE_FAILED"
    case channelShipmentExportInvalidMerchantshipmentno = "CHANNEL_SHIPMENT_EXPORT_INVALID_MERCHANTSHIPMENTNO"
    case channelFulfillmentShipmentImportStatusFailed = "CHANNEL_FULFILLMENT_SHIPMENT_IMPORT_STATUS_FAILED"
    case channelFulfillmentShipmentExportFailed = "CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_FAILED"
    case channelFulfillmentShipmentExportSucceeded = "CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_SUCCEEDED"
    case channelFulfillmentShipmentLineForClosedOrder = "CHANNEL_FULFILLMENT_SHIPMENT_LINE_FOR_CLOSED_ORDER"
    case channelengineSupportNotification = "CHANNELENGINE_SUPPORT_NOTIFICATION"
    case channelengineWebhookRquestFailed = "CHANNELENGINE_WEBHOOK_RQUEST_FAILED"
    case feedNoProductsFailed = "FEED_NO_PRODUCTS_FAILED"
    case feedImportFailed = "FEED_IMPORT_FAILED"
    case feedInvalidProductsOccured = "FEED_INVALID_PRODUCTS_OCCURED"
    case globalMessage = "GLOBAL_MESSAGE"
    case merchantOrderExportFailed = "MERCHANT_ORDER_EXPORT_FAILED"
    case merchantOrderExportLinesCancelled = "MERCHANT_ORDER_EXPORT_LINES_CANCELLED"
    case pluginInvalidSetting = "PLUGIN_INVALID_SETTING"
    case pluginDeactivated = "PLUGIN_DEACTIVATED"
    case productBundleImportFailed = "PRODUCT_BUNDLE_IMPORT_FAILED"
    case channelOrderCancellationRequestNew = "CHANNEL_ORDER_CANCELLATION_REQUEST_NEW"
    case channelCancellationExportFailed = "CHANNEL_CANCELLATION_EXPORT_FAILED"
    case merchantCancellationImportFailed = "MERCHANT_CANCELLATION_IMPORT_FAILED"
    case oauthRefreshTokenExpiration = "OAUTH_REFRESH_TOKEN_EXPIRATION"
    case merchantStockUpdateFailed = "MERCHANT_STOCK_UPDATE_FAILED"
}
