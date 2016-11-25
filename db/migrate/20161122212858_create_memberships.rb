class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :user
      t.references :course
      t.string :role
      t.boolean :is_admin
      t.timestamps
    end
  end
end
