class OtaAdditionalRule < ActiveRecord::Base
  set_table_name :ota_additional_rule
  belongs_to :ota_addtional_rules, :foreign_key => :parent_id
end
