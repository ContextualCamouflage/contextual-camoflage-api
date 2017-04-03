class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.belongs_to :user, index: true
      t.belongs_to :location, index: true
      t.belongs_to :anecdote, index: true

      t.timestamps
    end
  end
end
