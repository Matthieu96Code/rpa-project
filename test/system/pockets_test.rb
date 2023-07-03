require "application_system_test_case"

class PocketsTest < ApplicationSystemTestCase
  setup do
    @pocket = pockets(:one)
  end

  test "visiting the index" do
    visit pockets_url
    assert_selector "h1", text: "Pockets"
  end

  test "should create pocket" do
    visit pockets_url
    click_on "New pocket"

    fill_in "Author", with: @pocket.author_id
    fill_in "Name", with: @pocket.name
    click_on "Create Pocket"

    assert_text "Pocket was successfully created"
    click_on "Back"
  end

  test "should update Pocket" do
    visit pocket_url(@pocket)
    click_on "Edit this pocket", match: :first

    fill_in "Author", with: @pocket.author_id
    fill_in "Name", with: @pocket.name
    click_on "Update Pocket"

    assert_text "Pocket was successfully updated"
    click_on "Back"
  end

  test "should destroy Pocket" do
    visit pocket_url(@pocket)
    click_on "Destroy this pocket", match: :first

    assert_text "Pocket was successfully destroyed"
  end
end
