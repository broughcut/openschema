class OtaRateDescription < ActiveRecord::Base
  set_table_name :ota_rate_description
  belongs_to :ota_rate, :foreign_key => :parent_id
end
