require "application_system_test_case"

class MakanansTest < ApplicationSystemTestCase
  setup do
    @makanan = makanans(:one)
  end

  test "visiting the index" do
    visit makanans_url
    assert_selector "h1", text: "Makanans"
  end

  test "should create makanan" do
    visit makanans_url
    click_on "New makanan"

    check "Halal" if @makanan.halal
    fill_in "Name", with: @makanan.name
    fill_in "Price", with: @makanan.price
    click_on "Create Makanan"

    assert_text "Makanan was successfully created"
    click_on "Back"
  end

  test "should update Makanan" do
    visit makanan_url(@makanan)
    click_on "Edit this makanan", match: :first

    check "Halal" if @makanan.halal
    fill_in "Name", with: @makanan.name
    fill_in "Price", with: @makanan.price
    click_on "Update Makanan"

    assert_text "Makanan was successfully updated"
    click_on "Back"
  end

  test "should destroy Makanan" do
    visit makanan_url(@makanan)
    click_on "Destroy this makanan", match: :first

    assert_text "Makanan was successfully destroyed"
  end
end
