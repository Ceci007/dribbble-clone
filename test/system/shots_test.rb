require "application_system_test_case"

class ShotsTest < ApplicationSystemTestCase
  setup do
    @shot = shots(:one)
  end

  test "visiting the index" do
    visit shots_url
    assert_selector "h1", text: "Shots"
  end

  test "creating a Shot" do
    visit shots_url
    click_on "New Shot"

    fill_in "Description", with: @shot.description
    fill_in "Title", with: @shot.title
    fill_in "User", with: @shot.user_id
    click_on "Create Shot"

    assert_text "Shot was successfully created"
    click_on "Back"
  end

  test "updating a Shot" do
    visit shots_url
    click_on "Edit", match: :first

    fill_in "Description", with: @shot.description
    fill_in "Title", with: @shot.title
    fill_in "User", with: @shot.user_id
    click_on "Update Shot"

    assert_text "Shot was successfully updated"
    click_on "Back"
  end

  test "destroying a Shot" do
    visit shots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shot was successfully destroyed"
  end
end
