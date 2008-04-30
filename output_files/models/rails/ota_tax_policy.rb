class OtaTaxPolicy < ActiveRecord::Base
  set_table_name :ota_tax_policy
  belongs_to :ota_tax_policies, :foreign_key => :parent_id
  has_one :ota_tax_description, :foreign_key => :parent_id 
end
