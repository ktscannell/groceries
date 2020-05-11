class RemoveAreaCodeFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :area_code
  end
end
