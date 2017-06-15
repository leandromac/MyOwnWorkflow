class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.string :description
      t.string :price
      t.string :status

      t.timestamps null: false
    end
  end
end
