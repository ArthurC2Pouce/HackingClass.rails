class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :content
      t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
