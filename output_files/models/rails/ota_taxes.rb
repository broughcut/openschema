class OtaTaxes < ActiveRecord::Base
  set_table_name :ota_taxes
  belongs_to :ota_fee, :foreign_key => :parent_id
  belongs_to :ota_additional_guest_amount, :foreign_key => :parent_id
  belongs_to :ota_base_by_guest_amt, :foreign_key => :parent_id
end
