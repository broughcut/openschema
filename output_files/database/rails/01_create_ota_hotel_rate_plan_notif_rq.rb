class CreateOtaHotelRatePlanNotifRq < ActiveRecord::Migration
  def self.up
    create_table :ota_commission do |t|
      t.string :status_type
      t.string :currency_code
      t.string :percent
      t.string :reason_code, :limit => 8 
      t.string :decimal_places
      t.string :bill_to_id, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_payment_policies do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate do |t|
      t.string :status
      t.string :inv_type, :limit => 16 
      t.string :inv_code_application
      t.integer :sun
      t.integer :mon
      t.string :min_los, :limit => 16 
      t.string :max_los, :limit => 16 
      t.string :max_guest_applicable, :limit => 999 
      t.string :currency_code
      t.string :start
      t.string :inv_type_code, :limit => 16 
      t.integer :tue
      t.string :number_of_units, :limit => 9999 
      t.string :unit_multiplier, :limit => 999 
      t.string :stay_over_date
      t.string :max_age, :limit => 999 
      t.string :end
      t.string :age_qualifying_code
      t.integer :thur
      t.integer :sat
      t.string :rate_tier, :limit => 64 
      t.string :min_age, :limit => 999 
      t.integer :weds
      t.integer :fri
      t.integer :extra_night_indicator
      t.string :decimal_places
      t.string :inv_code, :limit => 16 
      t.string :min_guest_applicable, :limit => 999 
      t.integer :is_room
      t.string :duration
      t.string :age_time_unit
      t.string :rate_time_unit
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_lengths_of_stay do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_hotel_rate_plan_notif_rq do |t|
      t.datetime :time_stamp
      t.string :alt_lang_id
      t.string :version
      t.string :message_content_code
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
    create_table :ota_addl_guest_amt_description do |t|
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
    create_table :ota_rates do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_policies do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_additional_guest_amount do |t|
      t.string :currency_code
      t.string :code
      t.integer :tax_inclusive
      t.string :percent
      t.string :max_age, :limit => 999 
      t.string :age_qualifying_code
      t.string :min_age, :limit => 999 
      t.string :max_additional_guests, :limit => 999 
      t.string :amount
      t.string :decimal_places
      t.string :type
      t.string :age_time_unit
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_base_by_guest_amt do |t|
      t.string :currency_code
      t.string :code, :limit => 16 
      t.string :amount_before_tax
      t.string :max_age, :limit => 999 
      t.string :age_qualifying_code
      t.string :min_age, :limit => 999 
      t.integer :additional_fees_excluded_indicator
      t.string :decimal_places
      t.string :amount_after_tax
      t.string :number_of_guests, :limit => 999 
      t.string :age_time_unit
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_cancel_penalties do |t|
      t.integer :cancel_policy_indicator
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_description do |t|
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
    create_table :ota_rate_plan do |t|
      t.string :rate_plan_code, :limit => 64 
      t.string :rate_plan_notif_type
      t.string :currency_code
      t.string :start
      t.integer :inventory_allocated_ind
      t.string :yield_delta_amount
      t.string :rate_plan_type
      t.string :rate_plan_status_type
      t.integer :earliest_start_indicator
      t.integer :rate_return
      t.integer :rate_plan_qualifier
      t.string :rate_plan_code_type
      t.string :promotion_code, :limit => 32 
      t.string :end
      t.string :promotion_vendor_code, :limit => 8 
      t.string :rate_plan_notif_scope_type
      t.string :rate_plan_category, :limit => 64 
      t.string :decimal_places
      t.integer :yieldable_indicator
      t.integer :restricted_display_indicator
      t.string :rate_plan_id, :limit => 64 
      t.integer :is_commissionable
      t.string :extra_night_rate_plan_code, :limit => 64 
      t.string :market_code, :limit => 64 
      t.integer :latest_end_indicator
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_additional_guest_amounts do |t|
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
    create_table :ota_additional_rule do |t|
      t.string :additional_rule
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_misc_charge_order do |t|
      t.string :ticket_number, :limit => 32 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_booking_rule do |t|
      t.string :quantity, :limit => 9999 
      t.string :uri
      t.integer :address_required
      t.string :absolute_drop_time
      t.string :start
      t.integer :generally_bookable
      t.string :code, :limit => 8 
      t.string :offset_calculation_mode
      t.string :min_total_occupancy
      t.string :end
      t.integer :qualified_rate_yn
      t.string :max_total_occupancy
      t.string :code_context, :limit => 32 
      t.integer :price_viewable
      t.string :absolute_cutoff
      t.string :duration
      t.string :max_contiguous_bookings
      t.integer :parent_id
      t.timestamps
    end
      execute("alter table ota_booking_rule add offset_duration interval")
      execute("alter table ota_booking_rule add min_advanced_booking_offset interval")
      execute("alter table ota_booking_rule add max_advanced_booking_offset interval")
      execute("alter table ota_booking_rule add force_guarantee_offset interval")
      execute("alter table ota_booking_rule add deposit_waiver_offset interval")
    create_table :ota_destination_systems_code do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate_plan_level_fee do |t|
      t.string :quantity, :limit => 9999 
      t.string :uri
      t.string :code, :limit => 8 
      t.string :code_context, :limit => 32 
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
    create_table :ota_departure_days_of_week do |t|
      t.integer :sun
      t.integer :mon
      t.integer :tue
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_available_days_of_week do |t|
      t.integer :sun
      t.integer :mon
      t.integer :tue
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_bank_acct do |t|
      t.integer :checks_accepted_ind
      t.string :bank_acct_number, :limit => 32 
      t.string :acct_type, :limit => 32 
      t.string :bank_id, :limit => 64 
      t.string :share_market_ind
      t.string :share_synch_ind
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_payment_card do |t|
      t.string :card_code
      t.string :expire_date
      t.string :card_type
      t.string :card_number, :limit => 19 
      t.string :card_holder_rph
      t.string :share_market_ind
      t.string :series_code, :limit => 8 
      t.string :masked_card_number, :limit => 19 
      t.string :share_synch_ind
      t.string :effective_date
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_accepted do |t|
      t.integer :interbank_nbr_req_ind
      t.integer :no_card_holder_info_req_ind
      t.integer :name_req_ind
      t.integer :default
      t.string :cost_center_id, :limit => 32 
      t.string :share_market_ind
      t.integer :phone_req_ind
      t.string :payment_transaction_type_code
      t.string :share_synch_ind
      t.string :rph
      t.integer :address_req_ind
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_number_of_guests_description do |t|
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
    create_table :ota_addtional_rules do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_viewerships do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_required_days_of_week do |t|
      t.integer :sun
      t.integer :mon
      t.integer :tue
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_direct_bill do |t|
      t.string :direct_bill_id, :limit => 32 
      t.string :share_market_ind
      t.string :share_synch_ind
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_unique_id do |t|
      t.string :id_context, :limit => 32 
      t.string :url
      t.string :type
      t.string :the_id, :limit => 32 
      t.string :instance, :limit => 32 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_fee do |t|
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
      t.string :meal_plan_code
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
    create_table :ota_fees do |t|
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
    create_table :ota_acceptable_guarantees do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tpa_extensions do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_required_paymts do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_voucher do |t|
      t.datetime :expire_date
      t.string :series_code, :limit => 32 
      t.datetime :effective_date
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantees_accepted do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_guarantee_policy do |t|
      t.string :hold_time
      t.string :retribution_type
      t.string :guarantee_code, :limit => 32 
      t.string :guarantee_type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_restriction_status do |t|
      t.string :status
      t.integer :sell_through_open_indicator
      t.string :restriction
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_dow_restrictions do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_cash do |t|
      t.integer :cash_indicator
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_booking_rules do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_sellable_products do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate_plan_shoulder do |t|
      t.string :post_shoulder_sell_limit
      t.string :post_shoulder_end_date
      t.string :pre_shoulder_start_date
      t.string :pre_shoulder_sell_limit
      t.string :shoulder_rph
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_base_by_guest_amts do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_arrival_days_of_week do |t|
      t.integer :sun
      t.integer :mon
      t.integer :tue
      t.integer :thur
      t.integer :sat
      t.integer :weds
      t.integer :fri
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_comments do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_pos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate_plan_shoulders do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate_description do |t|
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
    create_table :ota_cancel_policies do |t|
      t.integer :cancel_policy_indicator
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_inventory_info do |t|
      t.string :inv_type, :limit => 16 
      t.string :inv_code_application
      t.string :inv_type_code, :limit => 16 
      t.string :inv_code, :limit => 16 
      t.integer :is_room
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
    create_table :ota_loyalty_redemption do |t|
      t.string :certificate_number, :limit => 32 
      t.string :member_number, :limit => 32 
      t.string :redemption_quantity
      t.string :program_name, :limit => 64 
      t.string :promotion_code, :limit => 32 
      t.string :promotion_vendor_code, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_acceptable_guarantee do |t|
      t.string :hold_time
      t.string :currency_code
      t.string :guarantee_policy_type
      t.string :retribution_type
      t.string :guarantee_code, :limit => 32 
      t.string :payment_type
      t.string :guarantee_type
      t.string :decimal_places
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_rate_plans do |t|
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
  end
  def self.down
    drop_table :ota_commission
    drop_table :ota_payment_policies
    drop_table :ota_rate
    drop_table :ota_lengths_of_stay
    drop_table :ota_hotel_rate_plan_notif_rq
    drop_table :ota_addl_guest_amt_description
    drop_table :ota_rates
    drop_table :ota_guarantee_policies
    drop_table :ota_additional_guest_amount
    drop_table :ota_base_by_guest_amt
    drop_table :ota_cancel_penalties
    drop_table :ota_guarantee_description
    drop_table :ota_rate_plan
    drop_table :ota_additional_guest_amounts
    drop_table :ota_taxes
    drop_table :ota_additional_rule
    drop_table :ota_misc_charge_order
    drop_table :ota_booking_rule
    drop_table :ota_destination_systems_code
    drop_table :ota_rate_plan_level_fee
    drop_table :ota_checkout_charge
    drop_table :ota_departure_days_of_week
    drop_table :ota_available_days_of_week
    drop_table :ota_bank_acct
    drop_table :ota_payment_card
    drop_table :ota_guarantee_accepted
    drop_table :ota_number_of_guests_description
    drop_table :ota_addtional_rules
    drop_table :ota_viewerships
    drop_table :ota_required_days_of_week
    drop_table :ota_direct_bill
    drop_table :ota_unique_id
    drop_table :ota_fee
    drop_table :ota_fees
    drop_table :ota_deadline
    drop_table :ota_acceptable_guarantees
    drop_table :ota_tpa_extensions
    drop_table :ota_required_paymts
    drop_table :ota_voucher
    drop_table :ota_guarantees_accepted
    drop_table :ota_guarantee_policy
    drop_table :ota_restriction_status
    drop_table :ota_dow_restrictions
    drop_table :ota_cash
    drop_table :ota_booking_rules
    drop_table :ota_sellable_products
    drop_table :ota_rate_plan_shoulder
    drop_table :ota_base_by_guest_amts
    drop_table :ota_arrival_days_of_week
    drop_table :ota_comments
    drop_table :ota_pos
    drop_table :ota_rate_plan_shoulders
    drop_table :ota_rate_description
    drop_table :ota_cancel_policies
    drop_table :ota_inventory_info
    drop_table :ota_description
    drop_table :ota_loyalty_redemption
    drop_table :ota_acceptable_guarantee
    drop_table :ota_rate_plans
  end
end
