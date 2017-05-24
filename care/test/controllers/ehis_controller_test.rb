require 'test_helper'

class EhisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ehi = ehis(:one)
  end

  test "should get index" do
    get ehis_url
    assert_response :success
  end

  test "should get new" do
    get new_ehi_url
    assert_response :success
  end

  test "should create ehi" do
    assert_difference('Ehi.count') do
      post ehis_url, params: { ehi: {  } }
    end

    assert_redirected_to ehi_url(Ehi.last)
  end

  test "should show ehi" do
    get ehi_url(@ehi)
    assert_response :success
  end

  test "should get edit" do
    get edit_ehi_url(@ehi)
    assert_response :success
  end

  test "should update ehi" do
    patch ehi_url(@ehi), params: { ehi: {  } }
    assert_redirected_to ehi_url(@ehi)
  end

  test "should destroy ehi" do
    assert_difference('Ehi.count', -1) do
      delete ehi_url(@ehi)
    end

    assert_redirected_to ehis_url
  end
end
