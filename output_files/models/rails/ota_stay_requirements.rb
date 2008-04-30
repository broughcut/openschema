class OtaStayRequirements < ActiveRecord::Base
  set_table_name :ota_stay_requirements
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_many :ota_stay_requirements, :foreign_key => :parent_id 
end
