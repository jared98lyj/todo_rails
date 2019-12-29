class AddTagsToTodoManager < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_managers, :tags, :string
  end
end
