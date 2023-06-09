class TaskDependency < ApplicationRecord
  belongs_to :task
  belong_to :dependent_task, class_name: "Task"
end
