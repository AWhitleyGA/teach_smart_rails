class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.references :membership
      t.references :assignment
      t.decimal :grade
      t.text :notes
      t.timestamps
    end
  end
end
