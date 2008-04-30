class OtaCoverages < ActiveRecord::Base
  set_table_name :ota_coverages
  belongs_to :ota_liabilities, :foreign_key => :parent_id
  has_many :ota_coverages, :foreign_key => :parent_id 
end
