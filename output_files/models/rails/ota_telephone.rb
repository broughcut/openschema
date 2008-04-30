class OtaTelephone < ActiveRecord::Base
  set_table_name :ota_telephone
  belongs_to :ota_location_detail, :foreign_key => :parent_id
end
