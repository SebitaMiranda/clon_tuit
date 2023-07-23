require "application_system_test_case"

class ClonTuitsTest < ApplicationSystemTestCase
  setup do
    @clon_tuit = clon_tuits(:one)
  end

  test "visiting the index" do
    visit clon_tuits_url
    assert_selector "h1", text: "Clon tuits"
  end

  test "should create clon tuit" do
    visit clon_tuits_url
    click_on "New clon tuit"

    fill_in "Date", with: @clon_tuit.date
    fill_in "Email", with: @clon_tuit.email
    fill_in "Tuit", with: @clon_tuit.tuit
    fill_in "User", with: @clon_tuit.user
    click_on "Create Clon tuit"

    assert_text "Clon tuit was successfully created"
    click_on "Back"
  end

  test "should update Clon tuit" do
    visit clon_tuit_url(@clon_tuit)
    click_on "Edit this clon tuit", match: :first

    fill_in "Date", with: @clon_tuit.date
    fill_in "Email", with: @clon_tuit.email
    fill_in "Tuit", with: @clon_tuit.tuit
    fill_in "User", with: @clon_tuit.user
    click_on "Update Clon tuit"

    assert_text "Clon tuit was successfully updated"
    click_on "Back"
  end

  test "should destroy Clon tuit" do
    visit clon_tuit_url(@clon_tuit)
    click_on "Destroy this clon tuit", match: :first

    assert_text "Clon tuit was successfully destroyed"
  end
end
