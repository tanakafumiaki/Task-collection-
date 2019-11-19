class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :list_name, null: false
      t.string :comment, null: false

      t.timestamps
    end
  end
end
