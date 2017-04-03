class CreateAnecdotes < ActiveRecord::Migration[5.0]
  def change
    create_table :anecdotes do |t|
      t.text :body
      t.string :cookie
      t.timestamps
    end
    add_index :anecdotes, :cookie
  end
end
