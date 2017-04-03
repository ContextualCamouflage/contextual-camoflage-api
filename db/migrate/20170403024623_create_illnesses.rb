class CreateIllnesses < ActiveRecord::Migration[5.0]
  def change
    create_table :illnesses do |t|
      t.string :title

      t.timestamps
    end
  end
end
