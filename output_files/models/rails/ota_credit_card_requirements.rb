class OtaCreditCardRequirements < ActiveRecord::Base
  set_table_name :ota_credit_card_requirements
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_credit_card_purpose, :foreign_key => :parent_id 
  has_one :ota_credit_card_info, :foreign_key => :parent_id 
end
