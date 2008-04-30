class OtaAge < ActiveRecord::Base
  set_table_name :ota_age
  belongs_to :ota_age_requirements, :foreign_key => :parent_id
  has_one :ota_age_surcharge, :foreign_key => :parent_id 
  has_one :ota_age_infos, :foreign_key => :parent_id 
  has_one :ota_vehicles, :foreign_key => :parent_id 
end
