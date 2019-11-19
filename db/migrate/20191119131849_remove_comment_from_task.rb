class RemoveCommentFromTask < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :comment, :string
  end
end
