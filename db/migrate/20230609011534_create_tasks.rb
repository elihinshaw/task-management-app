class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.string :due_date
      t.string :status
      t.string :progress

      t.timestamps
    end
  end
end
