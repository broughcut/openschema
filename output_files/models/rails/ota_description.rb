class OtaDescription < ActiveRecord::Base
  set_table_name :ota_description
  belongs_to :ota_special_equipment, :foreign_key => :parent_id
end
