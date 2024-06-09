class CreatePembelians < ActiveRecord::Migration[7.1]
  def change
    create_table :pembelians do |t|
      t.integer :kode_barang
      t.string :nama_barang
      t.integer :jumlah_barang
      t.boolean :status

      t.timestamps
    end
  end
end
