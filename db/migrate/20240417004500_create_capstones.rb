class CreateCapstones < ActiveRecord::Migration[7.1]
  def change
    create_table :capstones do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :screenshot

      t.timestamps
    end
  end
end
