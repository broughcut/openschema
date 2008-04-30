class OtaSpecialEquipment < ActiveRecord::Base
  set_table_name :ota_special_equipment
  belongs_to :ota_special_equipments, :foreign_key => :parent_id
  has_one :ota_description, :foreign_key => :parent_id 
  has_one :ota_charge, :foreign_key => :parent_id 
end
