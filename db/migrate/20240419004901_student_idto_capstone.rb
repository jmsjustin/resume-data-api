class StudentIdtoCapstone < ActiveRecord::Migration[7.1]
  def change
    add_column :capstones, :student_id, :integer
  end
end
