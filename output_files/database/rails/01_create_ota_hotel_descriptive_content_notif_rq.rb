class CreateOtaHotelDescriptiveContentNotifRq < ActiveRecord::Migration
  def self.up
    create_table :ota_commission_policy do |t|
      t.integer :mandatory_indicator
      t.string :max_charge_frequency_applies
      t.string :currency_code
      t.string :charge_unit_exempt
      t.datetime :expire_date
      t.string :code
      t.integer :taxable_indicator
      t.string :commission_applicability
      t.integer :tax_inclusive
      t.string :percent
      t.string :charge_unit
      t.string :amount
      t.string :decimal_places
      t.string :charge_frequency_exempt
      t.string :type
      t.string :charge_frequency
      t.string :max_charge_unit_applies
      t.string :rph
      t.datetime :effective_date
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tax_policy do |t|
      t.string :max_charge_frequency_applies
      t.string :currency_code
      t.string :charge_unit_exempt
      t.datetime :expire_date
      t.string :code
      t.string :taxable_nights_quantity
      t.string :percent
      t.string :nights_for_tax_exemption_quantity
      t.string :charge_unit
      t.string :amount
      t.string :decimal_places
      t.string :charge_frequency_exempt
      t.string :type
      t.string :charge_frequency
      t.string :max_charge_unit_applies
      t.datetime :effective_date
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_hotel_descriptive_contents do |t|
      t.integer :overwrite
      t.string :brand_name, :limit => 64 
      t.string :chain_name, :limit => 64 
      t.string :hotel_name, :limit => 128 
      t.string :brand_code, :limit => 8 
      t.string :chain_code, :limit => 8 
      t.string :hotel_code, :limit => 16 
      t.string :hotel_city_code, :limit => 8 
      t.string :hotel_code_context, :limit => 32 
      t.string :area_id, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_effective_period do |t|
      t.string :end_period
      t.string :start_period
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_cancel_policy do |t|
      t.integer :cancel_policy_indicator
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_stay_requirements do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_accepted_payments do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_hotel_info do |t|
      t.string :area_weather
      t.string :hotel_status_code
      t.string :start
      t.integer :iso9000_certified_ind
      t.string :interface_compliance, :limit => 64 
      t.string :end
      t.string :tax_id, :limit => 16 
      t.string :when_built, :limit => 16 
      t.string :pms_system, :limit => 64 
      t.datetime :last_updated
      t.string :duration
      t.integer :daylight_saving_indicator
      t.string :hotel_status, :limit => 64 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_taxes do |t|
      t.string :currency_code
      t.string :amount
      t.string :decimal_places
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_stay_requirement do |t|
      t.integer :sun
      t.integer :mon
      t.string :min_los
      t.string :max_los
      t.integer :tue
      t.string :stay_context
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_checkout_charges do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_destination_systems_code do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_hotel_descriptive_content_notif_rq do |t|
      t.datetime :time_stamp
      t.string :alt_lang_id
      t.string :version
      t.string :primary_lang_id
      t.integer :retransmission_indicator
      t.string :transaction_status_code
      t.string :transaction_identifier, :limit => 32 
      t.string :sequence_nmbr
      t.string :echo_token, :limit => 128 
      t.string :target
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_effective_periods do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_fee_policies do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policy_info do |t|
      t.string :max_child_age, :limit => 99 
      t.integer :internet_guarantee_required_ind
      t.string :usual_stay_free_cutoff_age
      t.integer :default_tax_service_inclusive
      t.string :usual_stay_free_child_per_adult
      t.string :min_guest_age
      t.integer :kids_stay_free
      t.string :check_out_time
      t.string :check_in_time
      t.string :total_guest_count
      t.string :min_recommended_guest_age
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_checkout_charge do |t|
      t.string :currency_code
      t.integer :balance_of_stay_ind
      t.string :exists_code
      t.integer :removal
      t.string :percent
      t.string :nmbr_of_nights
      t.string :amount
      t.string :decimal_places
      t.string :type
      t.string :code_detail, :limit => 64 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_viewerships do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_payment_company do |t|
      t.string :name, :limit => 128 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tax_policies do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_payment_policy do |t|
      t.integer :removal
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policies do |t|
      t.integer :guarantee_room_type_via_crc
      t.integer :guarantee_room_type_via_gds
      t.integer :guarantee_room_type_via_property
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_hotel_descriptive_content do |t|
      t.integer :overwrite
      t.string :brand_name, :limit => 64 
      t.string :currency_code
      t.string :chain_name, :limit => 64 
      t.string :weight_unit_of_measure_code
      t.string :start
      t.string :hotel_name, :limit => 128 
      t.string :brand_code, :limit => 8 
      t.string :unit_of_measure, :limit => 16 
      t.string :time_zone, :limit => 64 
      t.string :chain_code, :limit => 8 
      t.string :hotel_code, :limit => 16 
      t.string :hotel_city_code, :limit => 8 
      t.string :end
      t.string :unit_of_measure_quantity
      t.string :hotel_code_context, :limit => 32 
      t.string :decimal_places
      t.string :area_unit_of_measure_code
      t.string :area_id, :limit => 8 
      t.string :unit_of_measure_code
      t.datetime :last_updated
      t.string :language_code
      t.string :the_id, :limit => 32 
      t.string :duration
      t.string :distance_unit_of_measure_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_fee_policy do |t|
      t.integer :mandatory_indicator
      t.string :max_charge_frequency_applies
      t.string :currency_code
      t.string :charge_unit_exempt
      t.datetime :expire_date
      t.string :code
      t.integer :taxable_indicator
      t.integer :tax_inclusive
      t.string :percent
      t.string :charge_unit
      t.string :amount
      t.string :decimal_places
      t.string :charge_frequency_exempt
      t.string :type
      t.string :charge_frequency
      t.string :max_charge_unit_applies
      t.string :rph
      t.datetime :effective_date
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_pets_policy do |t|
      t.string :currency_code
      t.string :charge_code
      t.string :unit_of_measure, :limit => 16 
      t.string :refundable_deposit
      t.string :max_pet_quantity, :limit => 99 
      t.string :unit_of_measure_quantity
      t.string :non_refundable_fee
      t.string :decimal_places
      t.string :pets_policy_code
      t.string :unit_of_measure_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policy_info_code do |t|
      t.string :quantity, :limit => 9999 
      t.string :name
      t.string :uri
      t.string :exists_code
      t.string :code, :limit => 8 
      t.integer :removal
      t.string :code_context, :limit => 32 
      t.string :code_detail, :limit => 64 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policy_info_codes do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_deadline do |t|
      t.string :offset_unit_multiplier, :limit => 999 
      t.string :offset_time_unit
      t.string :offset_drop_time
      t.string :absolute_deadline
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_amount_percent do |t|
      t.string :currency_code
      t.integer :fees_inclusive
      t.integer :tax_inclusive
      t.string :percent
      t.string :nmbr_of_nights
      t.string :basis_type
      t.string :amount
      t.string :decimal_places
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tpa_extensions do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policy do |t|
      t.integer :sun
      t.integer :mon
      t.string :start
      t.string :code
      t.integer :tue
      t.integer :removal
      t.string :end
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.string :default_valid_booking_min_offset
      t.string :code_detail, :limit => 64 
      t.datetime :last_updated
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_gds_info do |t|
      t.string :master_chain_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_affiliation_info do |t|
      t.datetime :last_updated
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_pets_policies do |t|
      t.string :pets_allowed_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_payment do |t|
      t.integer :sun
      t.string :payment_code, :limit => 8 
      t.integer :mon
      t.string :hold_time
      t.string :start
      t.string :room_type_code, :limit => 16 
      t.string :retribution_type
      t.string :guarantee_code, :limit => 32 
      t.integer :tue
      t.integer :address_ind
      t.integer :no_card_holder_info_req_ind
      t.string :end
      t.integer :thur
      t.integer :sat
      t.integer :phone_ind
      t.string :guarantee_type
      t.integer :weds
      t.integer :interbank_nbr_ind
      t.integer :fri
      t.string :type
      t.integer :non_refundable_indicator
      t.integer :name_ind
      t.string :info_source
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_contact_infos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_multimedia_objects do |t|
      t.datetime :last_updated
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_area_info do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_address do |t|
      t.integer :formatted_ind
      t.string :type
      t.string :share_market_ind
      t.string :share_synch_ind
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_pos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tax_description do |t|
      t.string :name, :limit => 64 
      t.datetime :last_modify_date_time
      t.string :creator_id, :limit => 32 
      t.string :paragraph_number
      t.string :last_modifier_id, :limit => 32 
      t.datetime :create_date_time
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_description do |t|
      t.string :name, :limit => 64 
      t.datetime :last_modify_date_time
      t.string :creator_id, :limit => 32 
      t.string :paragraph_number
      t.string :last_modifier_id, :limit => 32 
      t.datetime :create_date_time
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_facility_info do |t|
      t.datetime :last_updated
      t.integer :parent_id
      t.timestamps
    end
  end
  def self.down
    drop_table :ota_commission_policy
    drop_table :ota_tax_policy
    drop_table :ota_hotel_descriptive_contents
    drop_table :ota_effective_period
    drop_table :ota_cancel_policy
    drop_table :ota_stay_requirements
    drop_table :ota_accepted_payments
    drop_table :ota_hotel_info
    drop_table :ota_taxes
    drop_table :ota_stay_requirement
    drop_table :ota_checkout_charges
    drop_table :ota_destination_systems_code
    drop_table :ota_hotel_descriptive_content_notif_rq
    drop_table :ota_effective_periods
    drop_table :ota_fee_policies
    drop_table :ota_policy_info
    drop_table :ota_checkout_charge
    drop_table :ota_viewerships
    drop_table :ota_payment_company
    drop_table :ota_tax_policies
    drop_table :ota_guarantee_payment_policy
    drop_table :ota_policies
    drop_table :ota_hotel_descriptive_content
    drop_table :ota_fee_policy
    drop_table :ota_pets_policy
    drop_table :ota_policy_info_code
    drop_table :ota_policy_info_codes
    drop_table :ota_deadline
    drop_table :ota_amount_percent
    drop_table :ota_tpa_extensions
    drop_table :ota_policy
    drop_table :ota_gds_info
    drop_table :ota_affiliation_info
    drop_table :ota_pets_policies
    drop_table :ota_guarantee_payment
    drop_table :ota_contact_infos
    drop_table :ota_multimedia_objects
    drop_table :ota_area_info
    drop_table :ota_address
    drop_table :ota_pos
    drop_table :ota_tax_description
    drop_table :ota_description
    drop_table :ota_facility_info
  end
end
