class OtaInfo < ActiveRecord::Base
  set_table_name :ota_info
  belongs_to :ota_liabilities, :foreign_key => :parent_id
end
