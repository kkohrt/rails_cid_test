require 'test_helper'

class BodySitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_site = body_sites(:one)
  end

  test "should get index" do
    get body_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_body_site_url
    assert_response :success
  end

  test "should create body_site" do
    assert_difference('BodySite.count') do
      post body_sites_url, params: { body_site: { id: @body_site.id, identifier: @body_site.identifier, name: @body_site.name } }
    end

    assert_redirected_to body_site_url(BodySite.last)
  end

  test "should show body_site" do
    get body_site_url(@body_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_site_url(@body_site)
    assert_response :success
  end

  test "should update body_site" do
    patch body_site_url(@body_site), params: { body_site: { id: @body_site.id, identifier: @body_site.identifier, name: @body_site.name } }
    assert_redirected_to body_site_url(@body_site)
  end

  test "should destroy body_site" do
    assert_difference('BodySite.count', -1) do
      delete body_site_url(@body_site)
    end

    assert_redirected_to body_sites_url
  end
end
