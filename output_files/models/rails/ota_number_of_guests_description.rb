class OtaNumberOfGuestsDescription < ActiveRecord::Base
  set_table_name :ota_number_of_guests_description
  belongs_to :ota_base_by_guest_amt, :foreign_key => :parent_id
end
