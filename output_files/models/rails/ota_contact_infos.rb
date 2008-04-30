class OtaContactInfos < ActiveRecord::Base
  set_table_name :ota_contact_infos
  belongs_to :ota_hotel_descriptive_content, :foreign_key => :parent_id
end
