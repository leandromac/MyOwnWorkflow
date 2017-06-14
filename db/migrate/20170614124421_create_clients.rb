class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :website
      t.string :address
      t.string :fiscal_number

      t.timestamps null: false
    end
  end
end
