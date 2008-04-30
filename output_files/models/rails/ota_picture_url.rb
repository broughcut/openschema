class OtaPictureURL < ActiveRecord::Base
  set_table_name :ota_picture_url
  belongs_to :ota_vehicle, :foreign_key => :parent_id
end
