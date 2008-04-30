class OtaHotelDescriptiveContents < ActiveRecord::Base
  set_table_name :ota_hotel_descriptive_contents
  belongs_to :ota_ota_hotel_descriptive_content_notif_rq, :foreign_key => :parent_id
  has_many :ota_hotel_descriptive_contents, :foreign_key => :parent_id 
end
