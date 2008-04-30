class OtaCancelPolicy < ActiveRecord::Base
  set_table_name :ota_cancel_policy
  belongs_to :ota_policy, :foreign_key => :parent_id
end
