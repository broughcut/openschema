class OtaGuaranteesAccepted < ActiveRecord::Base
  set_table_name :ota_guarantees_accepted
  belongs_to :ota_acceptable_guarantee, :foreign_key => :parent_id
  has_one :ota_guarantee_accepted, :foreign_key => :parent_id 
end
