class AddImageToClient < ActiveRecord::Migration
  def change
    add_column :clients, :image, :string
  end
end
