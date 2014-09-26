class CreateStatuses < ActiveRecord::Migration
  def change
  	add_column :status, :user_id, :integer
  	add_index :statuses, :user_id
  	remove_column :statuses, :name

    create_table :statuses do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
