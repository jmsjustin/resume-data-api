class StudentIdtoSkills < ActiveRecord::Migration[7.1]
  def change
    add_column :skills, :student_id, :integer
  end
end
