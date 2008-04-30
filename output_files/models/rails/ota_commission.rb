class OtaCommission < ActiveRecord::Base
  set_table_name :ota_commission
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
end
