class OtaKeyword < ActiveRecord::Base
  set_table_name :ota_keyword
  belongs_to :ota_keywords, :foreign_key => :parent_id
  has_one :ota_text, :foreign_key => :parent_id 
  has_one :ota_image, :foreign_key => :parent_id 
  has_one :ota_url, :foreign_key => :parent_id 
  has_one :ota_list_item, :foreign_key => :parent_id 
end
