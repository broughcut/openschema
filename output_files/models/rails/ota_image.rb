class OtaImage < ActiveRecord::Base
  set_table_name :ota_image
  belongs_to :ota_keyword, :foreign_key => :parent_id
  belongs_to :ota_policy, :foreign_key => :parent_id
end
