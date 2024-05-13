require "test_helper"

class MakanansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @makanan = makanans(:one)
  end

  test "should get index" do
    get makanans_url
    assert_response :success
  end

  test "should get new" do
    get new_makanan_url
    assert_response :success
  end

  test "should create makanan" do
    assert_difference("Makanan.count") do
      post makanans_url, params: { makanan: { halal: @makanan.halal, name: @makanan.name, price: @makanan.price } }
    end

    assert_redirected_to makanan_url(Makanan.last)
  end

  test "should show makanan" do
    get makanan_url(@makanan)
    assert_response :success
  end

  test "should get edit" do
    get edit_makanan_url(@makanan)
    assert_response :success
  end

  test "should update makanan" do
    patch makanan_url(@makanan), params: { makanan: { halal: @makanan.halal, name: @makanan.name, price: @makanan.price } }
    assert_redirected_to makanan_url(@makanan)
  end

  test "should destroy makanan" do
    assert_difference("Makanan.count", -1) do
      delete makanan_url(@makanan)
    end

    assert_redirected_to makanans_url
  end
end
