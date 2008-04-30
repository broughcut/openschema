class OtaAgeInfo < ActiveRecord::Base
  set_table_name :ota_age_info
  belongs_to :ota_age_infos, :foreign_key => :parent_id
  has_one :ota_sub_section, :foreign_key => :parent_id 
end
