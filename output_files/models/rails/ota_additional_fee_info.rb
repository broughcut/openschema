class OtaAdditionalFeeInfo < ActiveRecord::Base
  set_table_name :ota_additional_fee_info
  belongs_to :ota_additional_fees, :foreign_key => :parent_id
end
