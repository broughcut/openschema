class OtaKeywords < ActiveRecord::Base
  set_table_name :ota_keywords
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_many :ota_keywords, :foreign_key => :parent_id 
end
