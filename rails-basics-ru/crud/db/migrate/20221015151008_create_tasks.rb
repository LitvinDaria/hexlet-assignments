class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, presence: true
      t.text :description
      t.string :status, presence: true, default: 'new'
      t.string :creator, presence: true
      t.string :performer
      t.boolean :completed, presence: true
      t.timestamps
    end
  end
end
