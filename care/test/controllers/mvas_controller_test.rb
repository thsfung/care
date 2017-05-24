require 'test_helper'

class MvasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mva = mvas(:one)
  end

  test "should get index" do
    get mvas_url
    assert_response :success
  end

  test "should get new" do
    get new_mva_url
    assert_response :success
  end

  test "should create mva" do
    assert_difference('Mva.count') do
      post mvas_url, params: { mva: {  } }
    end

    assert_redirected_to mva_url(Mva.last)
  end

  test "should show mva" do
    get mva_url(@mva)
    assert_response :success
  end

  test "should get edit" do
    get edit_mva_url(@mva)
    assert_response :success
  end

  test "should update mva" do
    patch mva_url(@mva), params: { mva: {  } }
    assert_redirected_to mva_url(@mva)
  end

  test "should destroy mva" do
    assert_difference('Mva.count', -1) do
      delete mva_url(@mva)
    end

    assert_redirected_to mvas_url
  end
end
