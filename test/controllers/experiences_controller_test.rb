require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/experiences.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Experience.count, data.length
  end

  test "create" do
    assert_difference "Experience.count", 1 do
      post "/experiences.json", params: { start_date: "2024-01-14", end_date: "2024-5-16", job_title: "student", company_name: "actualize", details: "time to become the best software engineer i can be." }
      assert_response 200
    end
  end

  test "show" do
    get "/experiences/#{Experience.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "start_date", "end_date", "job_title", "company_name", "details", "created_at", "updated_at"], data.keys
  end

  test "update" do
    experience = Experience.first
    patch "/experiences/#{experience.id}.json", params: { start_date: "2024-01-01" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "2024-01-01", data["start_date"]
  end

  test "destroy" do
    assert_difference "Experience.count", -1 do
      delete "/experiences/#{Experience.first.id}.json"
      assert_response 200
    end
  end
end
