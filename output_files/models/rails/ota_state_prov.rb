class OtaStateProv < ActiveRecord::Base
  set_table_name :ota_state_prov
  belongs_to :ota_address, :foreign_key => :parent_id
end
