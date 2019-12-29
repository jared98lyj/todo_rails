class CreateTodoManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_managers do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
