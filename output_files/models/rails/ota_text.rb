class OtaText < ActiveRecord::Base
  set_table_name :ota_text
  belongs_to :ota_vehicle, :foreign_key => :parent_id
  belongs_to :ota_keyword, :foreign_key => :parent_id
  belongs_to :ota_policy, :foreign_key => :parent_id
end
