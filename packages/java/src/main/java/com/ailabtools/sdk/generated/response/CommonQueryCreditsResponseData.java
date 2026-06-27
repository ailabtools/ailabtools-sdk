package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Querying Credits API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CommonQueryCreditsResponseData {
    @JsonProperty("unique_sign")
    private String uniqueSign;
    @JsonProperty("name")
    private String name;
    @JsonProperty("balance")
    private Double balance;
    @JsonProperty("total")
    private Double total;
    @JsonProperty("last_recharge_balance")
    private Double lastRechargeBalance;
    @JsonProperty("balance_warning")
    private Double balanceWarning;
    @JsonProperty("first_buy_time")
    private Integer firstBuyTime;
    @JsonProperty("last_update_time")
    private Integer lastUpdateTime;

    public String getUniqueSign() { return uniqueSign; }
    public String getName() { return name; }
    public Double getBalance() { return balance; }
    public Double getTotal() { return total; }
    public Double getLastRechargeBalance() { return lastRechargeBalance; }
    public Double getBalanceWarning() { return balanceWarning; }
    public Integer getFirstBuyTime() { return firstBuyTime; }
    public Integer getLastUpdateTime() { return lastUpdateTime; }
}
