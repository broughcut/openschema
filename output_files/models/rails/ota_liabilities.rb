class OtaLiabilities < ActiveRecord::Base
  set_table_name :ota_liabilities
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_coverages, :foreign_key => :parent_id 
  has_one :ota_info, :foreign_key => :parent_id 
  has_one :ota_tpa_extensions, :foreign_key => :parent_id 
end
