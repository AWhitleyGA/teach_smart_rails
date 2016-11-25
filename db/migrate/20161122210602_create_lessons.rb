class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.references :course
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.text :body
      t.timestamps
    end
  end
end
