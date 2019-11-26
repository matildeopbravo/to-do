class AddIsCompletedToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :isCompleted, :bool
  end
end
