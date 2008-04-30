class OtaAgeRequirements < ActiveRecord::Base
  set_table_name :ota_age_requirements
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_age, :foreign_key => :parent_id 
end
