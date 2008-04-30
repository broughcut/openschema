class OtaDirectBill < ActiveRecord::Base
  set_table_name :ota_direct_bill
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
