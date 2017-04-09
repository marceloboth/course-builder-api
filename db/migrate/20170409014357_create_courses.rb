class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subtitle
      t.text :description
      t.float :price
      t.float :duration

      t.timestamps
    end
  end
end
