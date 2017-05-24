require 'test_helper'

class IcompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icompany = icompanies(:one)
  end

  test "should get index" do
    get icompanies_url
    assert_response :success
  end

  test "should get new" do
    get new_icompany_url
    assert_response :success
  end

  test "should create icompany" do
    assert_difference('Icompany.count') do
      post icompanies_url, params: { icompany: {  } }
    end

    assert_redirected_to icompany_url(Icompany.last)
  end

  test "should show icompany" do
    get icompany_url(@icompany)
    assert_response :success
  end

  test "should get edit" do
    get edit_icompany_url(@icompany)
    assert_response :success
  end

  test "should update icompany" do
    patch icompany_url(@icompany), params: { icompany: {  } }
    assert_redirected_to icompany_url(@icompany)
  end

  test "should destroy icompany" do
    assert_difference('Icompany.count', -1) do
      delete icompany_url(@icompany)
    end

    assert_redirected_to icompanies_url
  end
end
