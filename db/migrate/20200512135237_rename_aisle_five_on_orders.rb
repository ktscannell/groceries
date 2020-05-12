class RenameAisleFiveOnOrders < ActiveRecord::Migration[6.0]
  change_table :orders do |t|
    t.rename :aisle_five_snacks_and_pop, :aisle_five_snacks_pop
  end
end
