class OtaSellableProducts < ActiveRecord::Base
  set_table_name :ota_sellable_products
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  belongs_to :ota_rate_plan_shoulder, :foreign_key => :parent_id
end
