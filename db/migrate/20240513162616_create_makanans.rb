class CreateMakanans < ActiveRecord::Migration[7.1]
  def change
    create_table :makanans do |t|
      t.string :name
      t.boolean :halal
      t.integer :price

      t.timestamps
    end
  end
end
