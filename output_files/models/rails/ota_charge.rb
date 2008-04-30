class OtaCharge < ActiveRecord::Base
  set_table_name :ota_charge
  belongs_to :ota_coverage_fee, :foreign_key => :parent_id
  belongs_to :ota_special_equipment, :foreign_key => :parent_id
end
