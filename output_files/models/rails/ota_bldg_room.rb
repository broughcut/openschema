class OtaBldgRoom < ActiveRecord::Base
  set_table_name :ota_bldg_room
  belongs_to :ota_address, :foreign_key => :parent_id
end
