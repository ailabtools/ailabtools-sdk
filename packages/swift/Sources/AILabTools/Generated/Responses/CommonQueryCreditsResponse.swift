// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Querying Credits API.
public struct CommonQueryCreditsResponseData: Decodable {
    public let uniqueSign: String?
    public let name: String?
    public let balance: Double?
    public let total: Double?
    public let lastRechargeBalance: Double?
    public let balanceWarning: Double?
    public let firstBuyTime: Int?
    public let lastUpdateTime: Int?

    enum CodingKeys: String, CodingKey {
        case uniqueSign = "unique_sign"
        case name = "name"
        case balance = "balance"
        case total = "total"
        case lastRechargeBalance = "last_recharge_balance"
        case balanceWarning = "balance_warning"
        case firstBuyTime = "first_buy_time"
        case lastUpdateTime = "last_update_time"
    }
}

/// Typed response for Querying Credits API.
public struct CommonQueryCreditsResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: [CommonQueryCreditsResponseData]?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let uniqueSign: String?
    public let name: String?
    public let balance: Double?
    public let total: Double?
    public let lastRechargeBalance: Double?
    public let balanceWarning: Double?
    public let firstBuyTime: Int?
    public let lastUpdateTime: Int?

    enum CodingKeys: String, CodingKey {
        case requestId = "request_id"
        case logId = "log_id"
        case errorCode = "error_code"
        case errorCodeString = "error_code_str"
        case errorMessage = "error_msg"
        case errorDetail = "error_detail"
        case data
        case image = "image"
        case ratio = "ratio"
        case taskType = "task_type"
        case taskId = "task_id"
        case taskStatus = "task_status"
        case uniqueSign = "unique_sign"
        case name = "name"
        case balance = "balance"
        case total = "total"
        case lastRechargeBalance = "last_recharge_balance"
        case balanceWarning = "balance_warning"
        case firstBuyTime = "first_buy_time"
        case lastUpdateTime = "last_update_time"
    }
}
