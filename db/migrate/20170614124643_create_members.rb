class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :degree
      t.string :location
      t.string :email
      t.string :phone
      t.string :portfolio
      t.references :skill, index: true, foreign_key: true
      t.string :feedback
      t.string :deadline
      t.string :quality
      t.string :others_skills
      t.text :note
      t.string :image

      t.timestamps null: false
    end
  end
end
