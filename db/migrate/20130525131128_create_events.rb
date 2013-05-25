class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :user
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.integer :max_user_count

      t.timestamps
    end
    add_index :events, :user_id
  end
end
