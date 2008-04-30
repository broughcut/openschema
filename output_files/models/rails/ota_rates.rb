class OtaRates < ActiveRecord::Base
  set_table_name :ota_rates
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  has_many :ota_rates, :foreign_key => :parent_id 
end
