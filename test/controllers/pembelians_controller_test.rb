require "test_helper"

class PembeliansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pembelian = pembelians(:one)
  end

  test "should get index" do
    get pembelians_url
    assert_response :success
  end

  test "should get new" do
    get new_pembelian_url
    assert_response :success
  end

  test "should create pembelian" do
    assert_difference("Pembelian.count") do
      post pembelians_url, params: { pembelian: { jumlah_barang: @pembelian.jumlah_barang, kode_barang: @pembelian.kode_barang, nama_barang: @pembelian.nama_barang, status: @pembelian.status } }
    end

    assert_redirected_to pembelian_url(Pembelian.last)
  end

  test "should show pembelian" do
    get pembelian_url(@pembelian)
    assert_response :success
  end

  test "should get edit" do
    get edit_pembelian_url(@pembelian)
    assert_response :success
  end

  test "should update pembelian" do
    patch pembelian_url(@pembelian), params: { pembelian: { jumlah_barang: @pembelian.jumlah_barang, kode_barang: @pembelian.kode_barang, nama_barang: @pembelian.nama_barang, status: @pembelian.status } }
    assert_redirected_to pembelian_url(@pembelian)
  end

  test "should destroy pembelian" do
    assert_difference("Pembelian.count", -1) do
      delete pembelian_url(@pembelian)
    end

    assert_redirected_to pembelians_url
  end
end
