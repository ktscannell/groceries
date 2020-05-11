# frozen_string_literal: true

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
class Order < ApplicationRecord
  validates :name, :phone, :email, :service_type, :service_date,
            :payment_method, presence: true
  validates :substitutions, inclusion: { in: [true, false] }
  validate :service_date_cannot_be_in_the_past, :service_date_cannot_be_sunday
  validates :service_type, inclusion: { in: ['Curbside Pick Up', 'Delivery'] }
  validate :desired_pick_up_time_with_operating_hours
  validates :payment_method, inclusion: { in: [
    'Debit or Credit Card',
    'In-House Account',
    'Check',
    'Cash',
    'WIC',
    'SNAP'
  ] }
  
  private

  def service_date_cannot_be_in_the_past
    return unless service_date.present? && service_date < Time.zone.today

    errors.add(:service_date, "can't be in the past")
  end

  def service_date_cannot_be_sunday
    return unless service_date.sunday?

    errors.add(:service_date, 'must be Monday through Saturday')
  end

  def desired_pick_up_time_with_operating_hours
    unless desired_pick_up_time.hour < 8 || desired_pick_up_time.hour > 17
      return
    end

    errors.add(:desired_pick_up_time, 'must be between 8 am and 6 pm')
  end
end
