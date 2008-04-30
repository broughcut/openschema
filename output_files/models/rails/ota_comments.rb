class OtaComments < ActiveRecord::Base
  set_table_name :ota_comments
  belongs_to :ota_acceptable_guarantee, :foreign_key => :parent_id
end
