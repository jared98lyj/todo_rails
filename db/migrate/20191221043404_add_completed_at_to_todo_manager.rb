class AddCompletedAtToTodoManager < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_managers, :completed_at, :datetime
  end
end
