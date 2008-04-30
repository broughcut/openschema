class OtaGuaranteeDescription < ActiveRecord::Base
  set_table_name :ota_guarantee_description
  belongs_to :ota_acceptable_guarantee, :foreign_key => :parent_id
end
