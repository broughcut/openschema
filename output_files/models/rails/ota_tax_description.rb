class OtaTaxDescription < ActiveRecord::Base
  set_table_name :ota_tax_description
  belongs_to :ota_tax_policy, :foreign_key => :parent_id
end
