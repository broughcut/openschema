class OtaEffectivePeriod < ActiveRecord::Base
  set_table_name :ota_effective_period
  belongs_to :ota_effective_periods, :foreign_key => :parent_id
end
