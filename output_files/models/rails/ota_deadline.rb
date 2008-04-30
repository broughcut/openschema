class OtaDeadline < ActiveRecord::Base
  set_table_name :ota_deadline
  belongs_to :ota_acceptable_guarantee, :foreign_key => :parent_id
end
