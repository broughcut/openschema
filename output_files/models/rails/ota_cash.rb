class OtaCash < ActiveRecord::Base
  set_table_name :ota_cash
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
