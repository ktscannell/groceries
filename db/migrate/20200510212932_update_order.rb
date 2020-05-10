class UpdateOrder < ActiveRecord::Migration[6.0]
  change_table :orders do |t|
    t.remove :name, :phone, :pickup, :personal_care
    
    t.string :first_name
    t.string :last_name

    t.string :area_code
    t.string :phone_number

    t.string :service_type

    t.date :service_date
    t.time :desired_pick_up_time
    
    t.string :payment_method
    
    t.rename :beverages, :aisle_five_snacks_and_pop
    t.rename :canned_goods, :aisle_one_canned_non_perishables
    t.rename :dry_goods, :aisle_three_baking_personal_paper_products
    t.rename :frozen_foods, :freezer
    t.rename :cleaning, :aisle_four_household_products
    t.rename :paper_goods, :aisle_two_soups_cereal_ethnic_hot_beverages
    t.rename :other, :other_medicine_etc
  end
end
