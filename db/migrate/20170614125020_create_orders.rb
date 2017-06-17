class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :client, index: true, foreign_key: true
      t.string :payment
      t.date :deadline
      t.references :skill, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.string :description
      t.string :price
      t.string :status

      t.timestamps null: false
    end
  end
end
