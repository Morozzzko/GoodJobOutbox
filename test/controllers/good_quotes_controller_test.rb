require "test_helper"

class GoodQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_quote = good_quotes(:one)
  end

  test "should get index" do
    get good_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_good_quote_url
    assert_response :success
  end

  test "should create good_quote" do
    assert_difference("GoodQuote.count") do
      post good_quotes_url, params: { good_quote: { text: @good_quote.text } }
    end

    assert_redirected_to good_quote_url(GoodQuote.last)
  end

  test "should show good_quote" do
    get good_quote_url(@good_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_quote_url(@good_quote)
    assert_response :success
  end

  test "should update good_quote" do
    patch good_quote_url(@good_quote), params: { good_quote: { text: @good_quote.text } }
    assert_redirected_to good_quote_url(@good_quote)
  end

  test "should destroy good_quote" do
    assert_difference("GoodQuote.count", -1) do
      delete good_quote_url(@good_quote)
    end

    assert_redirected_to good_quotes_url
  end
end
