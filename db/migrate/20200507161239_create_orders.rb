class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email

      t.datetime :pickup

      t.boolean :substitutions, default: true
      
      t.text :beverages
      t.text :bakery
      t.text :canned_goods
      t.text :dairy
      t.text :dry_goods
      t.text :frozen
      t.text :meat
      t.text :produce
      t.text :cleaning
      t.text :paper_goods
      t.text :personal_care
      t.text :other

      t.text :notes

      t.timestamps
    end
  end
end
