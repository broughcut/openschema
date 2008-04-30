class OtaDestinationSystemsCode < ActiveRecord::Base
  set_table_name :ota_destination_systems_code
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
end
