class StudentIdtoEducation < ActiveRecord::Migration[7.1]
  def change
    add_column :educations, :student_id, :integer
  end
end
