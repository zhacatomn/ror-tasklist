class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :desc
      t.boolean :is_done

      t.timestamps
    end
  end
end
