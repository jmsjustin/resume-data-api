class StudentIdtoExperience < ActiveRecord::Migration[7.1]
  def change
    add_column :experiences, :student_id, :integer
  end
end
