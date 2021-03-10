require "application_system_test_case"

class BodySitesTest < ApplicationSystemTestCase
  setup do
    @body_site = body_sites(:one)
  end

  test "visiting the index" do
    visit body_sites_url
    assert_selector "h1", text: "Body Sites"
  end

  test "creating a Body site" do
    visit body_sites_url
    click_on "New Body Site"

    fill_in "Id", with: @body_site.id
    fill_in "Identifier", with: @body_site.identifier
    fill_in "Name", with: @body_site.name
    click_on "Create Body site"

    assert_text "Body site was successfully created"
    click_on "Back"
  end

  test "updating a Body site" do
    visit body_sites_url
    click_on "Edit", match: :first

    fill_in "Id", with: @body_site.id
    fill_in "Identifier", with: @body_site.identifier
    fill_in "Name", with: @body_site.name
    click_on "Update Body site"

    assert_text "Body site was successfully updated"
    click_on "Back"
  end

  test "destroying a Body site" do
    visit body_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Body site was successfully destroyed"
  end
end
