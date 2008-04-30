class OtaAdditionalFees < ActiveRecord::Base
  set_table_name :ota_additional_fees
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_additional_fee_info, :foreign_key => :parent_id 
end
