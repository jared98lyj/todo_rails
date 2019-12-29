class TodoManager < ApplicationRecord
    # Ensuring we dun get empty entries which are useless and clog up space
    has_many :todo_items
    validates :title, presence: true, length: { minimum: 1}
    validates :description, presence: true, length: { minimum: 1}
    validates :deadline, presence: true

end
