json.extract! todo_manager, :id, :title, :description, :created_at, :updated_at
json.url todo_manager_url(todo_manager, format: :json)
