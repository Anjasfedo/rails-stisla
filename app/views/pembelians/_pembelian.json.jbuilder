json.extract! pembelian, :id, :kode_barang, :nama_barang, :jumlah_barang, :status, :created_at, :updated_at
json.url pembelian_url(pembelian, format: :json)
