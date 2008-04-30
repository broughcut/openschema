class OtaFees < ActiveRecord::Base
  set_table_name :ota_fees
  belongs_to :ota_rate, :foreign_key => :parent_id
end
