class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.references :course
      t.string :name
      t.datetime :assigned_on
      t.datetime :due_on
      t.timestamps
    end
  end
end
