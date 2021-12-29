class AddNameToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :name, :string
  end
end
