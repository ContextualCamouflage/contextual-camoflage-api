class CreateResearches < ActiveRecord::Migration[5.0]
  def change
    create_table :researches do |t|
      t.string :gender
      t.string :age
      t.string :race
      t.string :occupation
      t.string :cookie
      t.timestamps
    end
    add_index :researches, :cookie
  end
end
