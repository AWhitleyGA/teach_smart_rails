class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
