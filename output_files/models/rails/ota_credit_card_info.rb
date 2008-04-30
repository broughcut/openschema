class OtaCreditCardInfo < ActiveRecord::Base
  set_table_name :ota_credit_card_info
  belongs_to :ota_credit_card_requirements, :foreign_key => :parent_id
end
