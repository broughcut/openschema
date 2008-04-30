class OtaCreditCardPurpose < ActiveRecord::Base
  set_table_name :ota_credit_card_purpose
  belongs_to :ota_credit_card_requirements, :foreign_key => :parent_id
  has_one :ota_credit_card_code, :foreign_key => :parent_id 
end
