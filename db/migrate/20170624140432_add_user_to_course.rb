class AddUserToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :user_id, :integer
    add_foreign_key :courses, :users
  end
end
