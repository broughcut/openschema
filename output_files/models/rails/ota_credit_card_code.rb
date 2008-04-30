class OtaCreditCardCode < ActiveRecord::Base
  set_table_name :ota_credit_card_code
  belongs_to :ota_credit_card_purpose, :foreign_key => :parent_id
end
