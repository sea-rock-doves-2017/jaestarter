class AddCreatorIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :creator_id, :integer
  end
end
