class OtaCountryName < ActiveRecord::Base
  set_table_name :ota_country_name
  belongs_to :ota_address, :foreign_key => :parent_id
end
