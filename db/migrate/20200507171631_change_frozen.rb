class ChangeFrozen < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :frozen, :frozen_foods
  end
end
