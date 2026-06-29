# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class CommonQueryCreditsResponseData
        include AILabTools::ResponseModel
        fields({
          :unique_sign => "unique_sign",
          :name => "name",
          :balance => "balance",
          :total => "total",
          :last_recharge_balance => "last_recharge_balance",
          :balance_warning => "balance_warning",
          :first_buy_time => "first_buy_time",
          :last_update_time => "last_update_time",
        }, {
        })
      end

      class CommonQueryCreditsResponse
        include AILabTools::ResponseModel
        fields({
          :request_id => "request_id",
          :log_id => "log_id",
          :error_code => "error_code",
          :error_code_str => "error_code_str",
          :error_msg => "error_msg",
          :error_detail => "error_detail",
          :data => "data",
          :image => "image",
          :ratio => "ratio",
          :task_type => "task_type",
          :task_id => "task_id",
          :task_status => "task_status",
          :unique_sign => "unique_sign",
          :name => "name",
          :balance => "balance",
          :total => "total",
          :last_recharge_balance => "last_recharge_balance",
          :balance_warning => "balance_warning",
          :first_buy_time => "first_buy_time",
          :last_update_time => "last_update_time",
        }, {
          :data => [CommonQueryCreditsResponseData],
        })
      end
    end
  end
end
