class AddIsCompleteToTasks < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :tasks, :is_complete, :boolean, default: false
    end
  end
end
