class OtaAffiliationInfo < ActiveRecord::Base
  set_table_name :ota_affiliation_info
  belongs_to :ota_hotel_descriptive_content, :foreign_key => :parent_id
end
