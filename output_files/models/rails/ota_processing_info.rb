class OtaProcessingInfo < ActiveRecord::Base
  set_table_name :ota_processing_info
  belongs_to :ota_location_detail, :foreign_key => :parent_id
end
