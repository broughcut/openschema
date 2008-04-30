class OtaPosition < ActiveRecord::Base
  set_table_name :ota_position
  belongs_to :ota_address, :foreign_key => :parent_id
end
