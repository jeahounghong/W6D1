class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.string :text
      t.timestamps
    end

    add_index :questions, :poll_id
    remove_column :polls, :author_id
    add_column :polls, :author_id, :integer
  end
end
