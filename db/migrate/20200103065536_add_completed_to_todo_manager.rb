class AddCompletedToTodoManager < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_managers, :completed, :boolean, :default => false
  end
end
