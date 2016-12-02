class AddUrlToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column(:assignments, :url, :string)
  end
end
