class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.references :membership
      t.references :lesson
      t.datetime :time
      t.string :status, default: :unmarked
      t.timestamps
    end
  end
end
