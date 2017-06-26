class CreateAdminProfiles < ActiveRecord::Migration
  def change
    create_table :admin_profiles do |t|
      t.string :image
      t.string :name
      t.string :phone
      t.references :skill, index: true, foreign_key: true
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
