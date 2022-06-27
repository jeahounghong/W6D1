class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.string :author_id, null: false
      t.string :title, null:false
      t.timestamps
    end

    add_index :polls, :author_id, unique: true
  end
end
