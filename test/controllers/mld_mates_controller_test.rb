require "test_helper"

class MldMatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mld_mate = mld_mates(:one)
  end

  test "should get index" do
    get mld_mates_url
    assert_response :success
  end

  test "should get new" do
    get new_mld_mate_url
    assert_response :success
  end

  test "should create mld_mate" do
    assert_difference('MldMate.count') do
      post mld_mates_url, params: { mld_mate: { email: @mld_mate.email, first_name: @mld_mate.first_name, github: @mld_mate.github, last_name: @mld_mate.last_name, whatsapp: @mld_mate.whatsapp } }
    end

    assert_redirected_to mld_mate_url(MldMate.last)
  end

  test "should show mld_mate" do
    get mld_mate_url(@mld_mate)
    assert_response :success
  end

  test "should get edit" do
    get edit_mld_mate_url(@mld_mate)
    assert_response :success
  end

  test "should update mld_mate" do
    patch mld_mate_url(@mld_mate), params: { mld_mate: { email: @mld_mate.email, first_name: @mld_mate.first_name, github: @mld_mate.github, last_name: @mld_mate.last_name, whatsapp: @mld_mate.whatsapp } }
    assert_redirected_to mld_mate_url(@mld_mate)
  end

  test "should destroy mld_mate" do
    assert_difference('MldMate.count', -1) do
      delete mld_mate_url(@mld_mate)
    end

    assert_redirected_to mld_mates_url
  end
end
