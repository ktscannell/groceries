# == Schema Information
#
# Table name: orders
#
#  id                                          :bigint           not null, primary key
#  email                                       :string
#  substitutions                               :boolean          default(TRUE)
#  aisle_five_snacks_and_pop                   :text
#  bakery                                      :text
#  aisle_one_canned_non_perishables            :text
#  dairy                                       :text
#  aisle_three_baking_personal_paper_products  :text
#  freezer                                     :text
#  meat                                        :text
#  produce                                     :text
#  aisle_four_household_products               :text
#  aisle_two_soups_cereal_ethnic_hot_beverages :text
#  other_medicine_etc                          :text
#  notes                                       :text
#  created_at                                  :datetime         not null
#  updated_at                                  :datetime         not null
#  first_name                                  :string
#  last_name                                   :string
#  area_code                                   :string
#  phone_number                                :string
#  service_type                                :string
#  service_date                                :date
#  desired_pick_up_time                        :time
#  payment_method                              :string
#
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
