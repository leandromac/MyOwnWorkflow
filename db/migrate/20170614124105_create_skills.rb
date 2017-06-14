class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.string :icon
      t.text :description

      t.timestamps null: false
    end
  end
end
