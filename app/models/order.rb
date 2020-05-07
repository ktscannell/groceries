# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  phone         :string           not null
#  email         :string
#  pickup        :datetime
#  substitutions :boolean          default(TRUE)
#  beverages     :text
#  bakery        :text
#  canned_goods  :text
#  dairy         :text
#  dry_goods     :text
#  frozen        :text
#  meat          :text
#  produce       :text
#  cleaning      :text
#  paper_goods   :text
#  personal_care :text
#  other         :text
#  notes         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Order < ApplicationRecord
  validates :name, :phone, presence: true 
end
