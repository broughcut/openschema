class OtaSpecialEquipments < ActiveRecord::Base
  set_table_name :ota_special_equipments
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_many :ota_special_equipments, :foreign_key => :parent_id 
end
