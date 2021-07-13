require "application_system_test_case"

class IntelligemsTest < ApplicationSystemTestCase
  setup do
    @intelligem = intelligems(:one)
  end

  test "visiting the index" do
    visit intelligems_url
    assert_selector "h1", text: "Intelligems"
  end

  test "creating a Intelligem" do
    visit intelligems_url
    click_on "New Intelligem"

    fill_in "Link", with: @intelligem.link
    fill_in "Link type", with: @intelligem.link_type
    fill_in "Name", with: @intelligem.name
    click_on "Create Intelligem"

    assert_text "Intelligem was successfully created"
    click_on "Back"
  end

  test "updating a Intelligem" do
    visit intelligems_url
    click_on "Edit", match: :first

    fill_in "Link", with: @intelligem.link
    fill_in "Link type", with: @intelligem.link_type
    fill_in "Name", with: @intelligem.name
    click_on "Update Intelligem"

    assert_text "Intelligem was successfully updated"
    click_on "Back"
  end

  test "destroying a Intelligem" do
    visit intelligems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intelligem was successfully destroyed"
  end
end
