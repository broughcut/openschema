class OtaInventoryInfo < ActiveRecord::Base
  set_table_name :ota_inventory_info
  belongs_to :ota_booking_rules, :foreign_key => :parent_id
end
