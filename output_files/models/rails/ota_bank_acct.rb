class OtaBankAcct < ActiveRecord::Base
  set_table_name :ota_bank_acct
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
