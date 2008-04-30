class OtaMultimediaObjects < ActiveRecord::Base
  set_table_name :ota_multimedia_objects
  belongs_to :ota_hotel_descriptive_content, :foreign_key => :parent_id
end
