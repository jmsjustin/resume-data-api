# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Student.create!(first_name: "Hank", last_name: "Hankson", email: "hank@example.com", phone_number: "(234) 555-1234", short_bio: "Hank has fun. Hank is fun.", linkedin_url: "linkedin.com/hankhankson", twitter_handle: "hankthelittlet1", website_url: "www.TheRealHankson.com", resume_url: "resume.com/hirehank", github_url: "github.com/HHankson", photo: "jpeg.png")

Student.create!(first_name: "Reginald", last_name: "Hornswaggle", email: "reggie@horn.com", phone_number: "(423) 555-4689", short_bio: "Reggies horn can pierce the sky!", linkedin_url: "linkedin.com/reggiehorn", twitter_handle: "elonmusk", website_url: "www.VegWithReg.com", resume_url: "resume.com/hirereggie", github_url: "github.com/RHornswaggle", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtQ3zUCbRXw39Hp99c7NE4d6v6aXsCpz1UiA&s")

Student.create!(first_name: "Concerned", last_name: "Ape", email: "concernedape@example.com", phone_number: "111-222-3333", short_bio: "creator of Stardew Valley -- working on Haunted Chocolatier", linkedin_url: "linkedin.com/concernedape", twitter_handle: "ConcernedApe", website_url: "https://www.stardewvalley.net/", resume_url: "resume.com/test", github_url: "github.com/test", photo: "https://pbs.twimg.com/profile_images/703728939995308032/IBU6i2IG_400x400.jpg")

Capstone.create!(name: "My Capstone Project", description: "This is my capstone project", url: "capstone.com", screenshot: "capstone")

Experience.create!(start_date: "2024-04-24", end_date: "2024-12-24", job_title: "student", company_name: "Actualize", details: "learning to be a software engineer.")

Skill.create!(skill_name: "Ruby")
Skill.create!(skill_name: "Rails")
Skill.create!(skill_name: "JavaSpcript")
Skill.create!(skill_name: "Reach.js")
Skill.create!(skill_name: "Vue.js")
Skill.create!(skill_name: "Flask")
Skill.create!(skill_name: "Python")
