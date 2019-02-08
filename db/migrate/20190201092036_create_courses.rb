class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :c_name
      t.float :fees

      t.timestamps
    end
  end
end
