class CreateTimeTracks < ActiveRecord::Migration
  def change
    create_table :time_tracks do |t|
      t.integer :content
      t.integer :user_id

      t.timestamps
    end
    add_index :time_tracks, [:user_id, :created_at]
  end
end
