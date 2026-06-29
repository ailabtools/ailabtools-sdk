package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class CommonQueryCreditsResponseData(
    @SerialName("unique_sign")
    public val uniqueSign: String? = null,
    @SerialName("name")
    public val name: String? = null,
    @SerialName("balance")
    public val balance: Double? = null,
    @SerialName("total")
    public val total: Double? = null,
    @SerialName("last_recharge_balance")
    public val lastRechargeBalance: Double? = null,
    @SerialName("balance_warning")
    public val balanceWarning: Double? = null,
    @SerialName("first_buy_time")
    public val firstBuyTime: Int? = null,
    @SerialName("last_update_time")
    public val lastUpdateTime: Int? = null,
)

/** Typed response for Querying Credits API. */
@Serializable
public data class CommonQueryCreditsResponse(
    @SerialName("request_id")
    public override val requestId: String? = null,
    @SerialName("log_id")
    public override val logId: String? = null,
    @SerialName("error_code")
    public override val errorCode: Int? = null,
    @SerialName("error_code_str")
    public override val errorCodeString: String? = null,
    @SerialName("error_msg")
    public override val errorMessage: String? = null,
    @SerialName("error_detail")
    public override val errorDetail: ErrorDetail? = null,
    @SerialName("data")
    public val data: List<CommonQueryCreditsResponseData>? = null,
    @SerialName("image")
    public val image: String? = null,
    @SerialName("ratio")
    public val ratio: JsonElement? = null,
    @SerialName("task_type")
    public val taskType: String? = null,
    @SerialName("task_id")
    public override val taskId: String? = null,
    @SerialName("task_status")
    public override val taskStatus: Int? = null,
    @SerialName("unique_sign")
    public val uniqueSign: String? = null,
    @SerialName("name")
    public val name: String? = null,
    @SerialName("balance")
    public val balance: Double? = null,
    @SerialName("total")
    public val total: Double? = null,
    @SerialName("last_recharge_balance")
    public val lastRechargeBalance: Double? = null,
    @SerialName("balance_warning")
    public val balanceWarning: Double? = null,
    @SerialName("first_buy_time")
    public val firstBuyTime: Int? = null,
    @SerialName("last_update_time")
    public val lastUpdateTime: Int? = null,
) : ApiResponse
