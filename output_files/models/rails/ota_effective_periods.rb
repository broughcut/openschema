class OtaEffectivePeriods < ActiveRecord::Base
  set_table_name :ota_effective_periods
  belongs_to :ota_hotel_descriptive_content, :foreign_key => :parent_id
  has_many :ota_effective_periods, :foreign_key => :parent_id 
end
