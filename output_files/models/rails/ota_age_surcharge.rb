class OtaAgeSurcharge < ActiveRecord::Base
  set_table_name :ota_age_surcharge
  belongs_to :ota_age, :foreign_key => :parent_id
end
