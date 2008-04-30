class OtaPetsPolicy < ActiveRecord::Base
  set_table_name :ota_pets_policy
  belongs_to :ota_pets_policies, :foreign_key => :parent_id
  has_one :ota_description, :foreign_key => :parent_id 
end
