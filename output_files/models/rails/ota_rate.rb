class OtaRate < ActiveRecord::Base
  set_table_name :ota_rate
  belongs_to :ota_rates, :foreign_key => :parent_id
  has_many :ota_base_by_guest_amts, :foreign_key => :parent_id 
  has_many :ota_additional_guest_amounts, :foreign_key => :parent_id 
  has_many :ota_fees, :foreign_key => :parent_id 
  has_many :ota_guarantee_policies, :foreign_key => :parent_id 
  has_many :ota_cancel_policies, :foreign_key => :parent_id 
  has_many :ota_payment_policies, :foreign_key => :parent_id 
  has_many :ota_rate_descriptions, :foreign_key => :parent_id 
  has_many :ota_unique_i_ds, :foreign_key => :parent_id 
end
