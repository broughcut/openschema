class OtaTPAExtensions < ActiveRecord::Base
  set_table_name :ota_tpa_extensions
  belongs_to :ota_liabilities, :foreign_key => :parent_id
end
