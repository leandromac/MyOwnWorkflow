class AddMembersCountToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :members_count, :integer, default: 0
  end
end
