class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.references :assignment
      t.references :lesson
      t.string :name
      t.text :description
      t.string :url
      t.timestamps
    end
  end
end
