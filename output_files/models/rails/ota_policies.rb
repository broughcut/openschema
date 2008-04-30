class OtaPolicies < ActiveRecord::Base
  set_table_name :ota_policies
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_many :ota_policies, :foreign_key => :parent_id 
end
