class CreateOtaVehLocDetailsNotifRq < ActiveRecord::Migration
  def self.up
    create_table :ota_vehicle_vendor_supplier do |t|
      t.string :travel_sector
      t.string :code, :limit => 16 
      t.string :company_short_name, :limit => 32 
      t.string :code_context, :limit => 32 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_coverages do |t|
      t.string :start
      t.string :end
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_credit_card_code do |t|
      t.string :card_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_addl_driver_infos do |t|
      t.string :currency_code
      t.string :start
      t.string :end
      t.string :amount
      t.string :decimal_places
      t.string :charge_type
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_city_name do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_coverage_fee do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_credit_card_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_veh_type do |t|
      t.string :door_count, :limit => 8 
      t.string :vehicle_category
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_bldg_room do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_processing_info do |t|
      t.string :travel_sector
      t.string :action
      t.string :start
      t.string :code, :limit => 16 
      t.string :company_short_name, :limit => 32 
      t.string :end
      t.string :code_context, :limit => 32 
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_additional_fee_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_additional_fees do |t|
      t.string :action
      t.string :start
      t.string :end
      t.string :type
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_veh_make_model do |t|
      t.string :name, :limit => 64 
      t.string :code, :limit => 8 
      t.string :model_year
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_veh_class do |t|
      t.string :size
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_text do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_position do |t|
      t.string :altitude_unit_of_measure_code
      t.string :longitude, :limit => 16 
      t.string :latitude, :limit => 16 
      t.string :altitude, :limit => 16 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_veh_loc_details_notif_rq do |t|
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
    create_table :ota_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_credit_card_purpose do |t|
      t.string :purpose_type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_vehicle_infos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_keywords do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_county do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_coverage_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_liabilities do |t|
      t.string :action
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_age_requirements do |t|
      t.string :action
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_url do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_state_prov do |t|
      t.string :state_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_addl_driver_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.string :type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_veh_identity do |t|
      t.string :license_plate_number, :limit => 16 
      t.string :vehicle_id_number, :limit => 32 
      t.string :vehicle_color, :limit => 16 
      t.string :vehicle_asset_number, :limit => 16 
      t.string :state_prov_code
      t.string :country_code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_vehicle do |t|
      t.string :drive_type
      t.string :fuel_type
      t.integer :air_condition_ind
      t.string :transmission_type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_sub_section do |t|
      t.string :sub_section_number, :limit => 999 
      t.string :sub_title, :limit => 64 
      t.string :sub_code, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_image do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policies do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_country_name do |t|
      t.string :code
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_age_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.string :type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_picture_url do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_list_item do |t|
      t.integer :list_item
      t.string :language
      t.integer :formatted
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_postal_code do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_location_detail do |t|
      t.string :name, :limit => 64 
      t.string :assoc_airport_loc_list, :limit => 8 
      t.string :code, :limit => 16 
      t.string :primary_loc_code_for_branch, :limit => 8 
      t.string :primary_airport_code, :limit => 8 
      t.string :counter_loc
      t.string :record_id, :limit => 32 
      t.string :extended_locaton_code, :limit => 8 
      t.string :code_context, :limit => 16 
      t.string :distance_unit
      t.integer :written_confirmation_ind
      t.integer :corporate_loc_ind
      t.string :viewership_rule_id, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_location_details do |t|
      t.string :location_quantity
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_tpa_extensions do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_shuttle_info do |t|
      t.string :action
      t.string :start
      t.string :end
      t.string :type
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_credit_card_requirements do |t|
      t.string :action
      t.string :start
      t.string :policy_number, :limit => 8 
      t.string :end
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_vehicles do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_policy do |t|
      t.string :name, :limit => 64 
      t.datetime :last_modify_date_time
      t.string :creator_id, :limit => 32 
      t.string :action
      t.string :paragraph_number
      t.string :last_modifier_id, :limit => 32 
      t.string :start
      t.string :code, :limit => 8 
      t.string :policy_number, :limit => 8 
      t.string :end
      t.datetime :create_date_time
      t.string :language
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_street_nmbr do |t|
      t.string :po_box, :limit => 16 
      t.string :street_nmbr_suffix, :limit => 8 
      t.string :rural_route_nmbr, :limit => 5 
      t.string :street_direction, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_loyalty_program do |t|
      t.string :action
      t.string :text, :limit => 128 
      t.string :start
      t.string :end
      t.string :program_id, :limit => 16 
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_coverage do |t|
      t.integer :required_ind
      t.string :type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_vehicle_info do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.string :type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_special_equipments do |t|
      t.string :action
      t.string :policy_number, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_operation_schedule do |t|
      t.string :start
      t.string :end
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_telephone do |t|
      t.string :phone_tech_type
      t.string :phone_number, :limit => 32 
      t.string :start
      t.string :end
      t.string :area_city_code, :limit => 8 
      t.integer :move_phone_nbr_to_pnr_ind
      t.string :phone_location_type
      t.string :country_access_code, :limit => 3 
      t.string :phone_use_type
      t.string :extension, :limit => 5 
      t.string :duration
      t.string :pin, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_address_line do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_additional_driver_requirements do |t|
      t.string :action
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_age_surcharge do |t|
      t.string :currency_code
      t.string :amount
      t.string :decimal_places
      t.string :charge_type
      t.string :age
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_age do |t|
      t.string :start
      t.string :end
      t.string :minimum_age
      t.string :maximum_age
      t.string :duration
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_charge do |t|
      t.integer :included_in_est_total_ind
      t.string :currency_code
      t.integer :tax_inclusive
      t.integer :included_in_rate
      t.string :amount
      t.integer :guaranteed_ind
      t.string :decimal_places
      t.string :description, :limit => 64 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_keyword do |t|
      t.string :name, :limit => 64 
      t.datetime :last_modify_date_time
      t.string :creator_id, :limit => 32 
      t.string :action
      t.string :paragraph_number
      t.string :last_modifier_id, :limit => 32 
      t.string :start
      t.string :code, :limit => 8 
      t.string :policy_number, :limit => 8 
      t.string :end
      t.datetime :create_date_time
      t.string :language
      t.string :duration
      t.string :attach_to_keyword, :limit => 64 
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_address do |t|
      t.string :use_type
      t.integer :default_ind
      t.string :start
      t.string :location_name, :limit => 64 
      t.string :end
      t.integer :formatted_ind
      t.string :type
      t.string :share_market_ind
      t.string :duration
      t.string :share_synch_ind
      t.string :rph
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_pos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_coverage_fees do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_shuttle_desc do |t|
      t.string :title, :limit => 64 
      t.string :language
      t.string :type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_age_infos do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_description do |t|
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_special_equipment do |t|
      t.string :quantity
      t.string :name, :limit => 64 
      t.integer :free_ind
      t.string :start
      t.string :restriction
      t.string :gds_type_code, :limit => 8 
      t.string :end
      t.integer :read_equip_policy_ind
      t.string :duration
      t.string :equip_type
      t.integer :parent_id
      t.timestamps
    end
    create_table :ota_operation_schedules do |t|
      t.string :action
      t.string :text, :limit => 64 
      t.string :policy_number, :limit => 8 
      t.integer :parent_id
      t.timestamps
    end
  end
  def self.down
    drop_table :ota_vehicle_vendor_supplier
    drop_table :ota_coverages
    drop_table :ota_credit_card_code
    drop_table :ota_addl_driver_infos
    drop_table :ota_city_name
    drop_table :ota_coverage_fee
    drop_table :ota_credit_card_info
    drop_table :ota_veh_type
    drop_table :ota_bldg_room
    drop_table :ota_processing_info
    drop_table :ota_additional_fee_info
    drop_table :ota_additional_fees
    drop_table :ota_veh_make_model
    drop_table :ota_veh_class
    drop_table :ota_text
    drop_table :ota_position
    drop_table :ota_veh_loc_details_notif_rq
    drop_table :ota_info
    drop_table :ota_credit_card_purpose
    drop_table :ota_vehicle_infos
    drop_table :ota_keywords
    drop_table :ota_county
    drop_table :ota_coverage_info
    drop_table :ota_liabilities
    drop_table :ota_age_requirements
    drop_table :ota_url
    drop_table :ota_state_prov
    drop_table :ota_addl_driver_info
    drop_table :ota_veh_identity
    drop_table :ota_vehicle
    drop_table :ota_sub_section
    drop_table :ota_image
    drop_table :ota_policies
    drop_table :ota_country_name
    drop_table :ota_age_info
    drop_table :ota_picture_url
    drop_table :ota_list_item
    drop_table :ota_postal_code
    drop_table :ota_location_detail
    drop_table :ota_location_details
    drop_table :ota_tpa_extensions
    drop_table :ota_shuttle_info
    drop_table :ota_credit_card_requirements
    drop_table :ota_vehicles
    drop_table :ota_policy
    drop_table :ota_street_nmbr
    drop_table :ota_loyalty_program
    drop_table :ota_coverage
    drop_table :ota_vehicle_info
    drop_table :ota_special_equipments
    drop_table :ota_operation_schedule
    drop_table :ota_telephone
    drop_table :ota_address_line
    drop_table :ota_additional_driver_requirements
    drop_table :ota_age_surcharge
    drop_table :ota_age
    drop_table :ota_charge
    drop_table :ota_keyword
    drop_table :ota_address
    drop_table :ota_pos
    drop_table :ota_coverage_fees
    drop_table :ota_shuttle_desc
    drop_table :ota_age_infos
    drop_table :ota_description
    drop_table :ota_special_equipment
    drop_table :ota_operation_schedules
  end
end
