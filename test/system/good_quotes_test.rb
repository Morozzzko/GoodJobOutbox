require "application_system_test_case"

class GoodQuotesTest < ApplicationSystemTestCase
  setup do
    @good_quote = good_quotes(:one)
  end

  test "visiting the index" do
    visit good_quotes_url
    assert_selector "h1", text: "Good quotes"
  end

  test "should create good quote" do
    visit good_quotes_url
    click_on "New good quote"

    fill_in "Text", with: @good_quote.text
    click_on "Create Good quote"

    assert_text "Good quote was successfully created"
    click_on "Back"
  end

  test "should update Good quote" do
    visit good_quote_url(@good_quote)
    click_on "Edit this good quote", match: :first

    fill_in "Text", with: @good_quote.text
    click_on "Update Good quote"

    assert_text "Good quote was successfully updated"
    click_on "Back"
  end

  test "should destroy Good quote" do
    visit good_quote_url(@good_quote)
    click_on "Destroy this good quote", match: :first

    assert_text "Good quote was successfully destroyed"
  end
end
