require "application_system_test_case"

class PembeliansTest < ApplicationSystemTestCase
  setup do
    @pembelian = pembelians(:one)
  end

  test "visiting the index" do
    visit pembelians_url
    assert_selector "h1", text: "Pembelians"
  end

  test "should create pembelian" do
    visit pembelians_url
    click_on "New pembelian"

    fill_in "Jumlah barang", with: @pembelian.jumlah_barang
    fill_in "Kode barang", with: @pembelian.kode_barang
    fill_in "Nama barang", with: @pembelian.nama_barang
    check "Status" if @pembelian.status
    click_on "Create Pembelian"

    assert_text "Pembelian was successfully created"
    click_on "Back"
  end

  test "should update Pembelian" do
    visit pembelian_url(@pembelian)
    click_on "Edit this pembelian", match: :first

    fill_in "Jumlah barang", with: @pembelian.jumlah_barang
    fill_in "Kode barang", with: @pembelian.kode_barang
    fill_in "Nama barang", with: @pembelian.nama_barang
    check "Status" if @pembelian.status
    click_on "Update Pembelian"

    assert_text "Pembelian was successfully updated"
    click_on "Back"
  end

  test "should destroy Pembelian" do
    visit pembelian_url(@pembelian)
    click_on "Destroy this pembelian", match: :first

    assert_text "Pembelian was successfully destroyed"
  end
end
