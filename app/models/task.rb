class Task < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :categories, optional: true
  has_many :task_dependencies
  has_many :dependent_tasks, through: :task_dependencies
end
