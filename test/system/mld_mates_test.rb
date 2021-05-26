require "application_system_test_case"

class MldMatesTest < ApplicationSystemTestCase
  setup do
    @mld_mate = mld_mates(:one)
  end

  test "visiting the index" do
    visit mld_mates_url
    assert_selector "h1", text: "Mld Mates"
  end

  test "creating a Mld mate" do
    visit mld_mates_url
    click_on "New Mld Mate"

    fill_in "Email", with: @mld_mate.email
    fill_in "First name", with: @mld_mate.first_name
    fill_in "Github", with: @mld_mate.github
    fill_in "Last name", with: @mld_mate.last_name
    fill_in "Whatsapp", with: @mld_mate.whatsapp
    click_on "Create Mld mate"

    assert_text "Mld mate was successfully created"
    click_on "Back"
  end

  test "updating a Mld mate" do
    visit mld_mates_url
    click_on "Edit", match: :first

    fill_in "Email", with: @mld_mate.email
    fill_in "First name", with: @mld_mate.first_name
    fill_in "Github", with: @mld_mate.github
    fill_in "Last name", with: @mld_mate.last_name
    fill_in "Whatsapp", with: @mld_mate.whatsapp
    click_on "Update Mld mate"

    assert_text "Mld mate was successfully updated"
    click_on "Back"
  end

  test "destroying a Mld mate" do
    visit mld_mates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mld mate was successfully destroyed"
  end
end
