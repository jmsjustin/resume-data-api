require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/educations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Education.count, data.length
  end

  test "create" do
    assert_difference "Education.count", 1 do
      post "/educations.json", params: { start_date: "test", end_date: "test", degree: "test", university_name: "test", details: "...", created_at: "yesterday", updated_at: "today" }
      assert_response 200
    end
  end
end
