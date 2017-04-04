class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :illness
      t.string :cookie
      t.string :relationship
      t.string :zip_code
      t.string :city
      t.timestamps
    end
    add_index :submissions, :cookie
  end
end
