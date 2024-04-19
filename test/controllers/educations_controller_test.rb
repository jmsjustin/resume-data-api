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

  test "show" do
    get "/educations/#{Education.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["start_date", "end_date", "degree", "university_name", "details", "created_at", "updated_at"], data.keys
  end

  test "update" do
    education = Education.first
    patch "/educations/#{education.id}.json", params: { university_name: "name" }
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal "name", data["university_name"]
  end

  test "destroy" do
    assert_difference "Education.count", -1 do
      delete "/educations/#{Education.first.id}.json"
      assert_response 200
    end
  end
end
