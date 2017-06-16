class AddOrderToService < ActiveRecord::Migration
  def change
    add_reference :services, :order, index: true, foreign_key: true
  end
end
