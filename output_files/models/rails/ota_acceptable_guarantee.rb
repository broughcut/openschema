class OtaAcceptableGuarantee < ActiveRecord::Base
  set_table_name :ota_acceptable_guarantee
  belongs_to :ota_acceptable_guarantees, :foreign_key => :parent_id
  has_one :ota_guarantees_accepted, :foreign_key => :parent_id 
  has_one :ota_deadline, :foreign_key => :parent_id 
  has_one :ota_comments, :foreign_key => :parent_id 
  has_one :ota_guarantee_description, :foreign_key => :parent_id 
end
