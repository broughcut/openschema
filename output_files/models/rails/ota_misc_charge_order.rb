class OtaMiscChargeOrder < ActiveRecord::Base
  set_table_name :ota_misc_charge_order
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
