class OtaAgeInfos < ActiveRecord::Base
  set_table_name :ota_age_infos
  belongs_to :ota_age, :foreign_key => :parent_id
  has_many :ota_age_infos, :foreign_key => :parent_id 
end
