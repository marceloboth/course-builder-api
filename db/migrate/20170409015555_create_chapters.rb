class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :order
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
