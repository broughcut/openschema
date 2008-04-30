class OtaStayRequirement < ActiveRecord::Base
  set_table_name :ota_stay_requirement
  belongs_to :ota_stay_requirements, :foreign_key => :parent_id
  has_one :ota_description, :foreign_key => :parent_id 
end
