class CreateTaskDependencies < ActiveRecord::Migration[7.0]
  def change
    create_table :task_dependencies do |t|
      t.integer :task_id
      t.integer :dependent_task_id

      t.timestamps
    end
  end
end
