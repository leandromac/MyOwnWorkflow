class AddGithubToMembers < ActiveRecord::Migration
  def change
    add_column :members, :github, :string
  end
end
