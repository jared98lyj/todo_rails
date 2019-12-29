class AddDeadlineToTodoManager < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_managers, :deadline, :date
  end
end
