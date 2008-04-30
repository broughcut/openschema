class OtaLoyaltyRedemption < ActiveRecord::Base
  set_table_name :ota_loyalty_redemption
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
