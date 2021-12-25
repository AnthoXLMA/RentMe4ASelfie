class AddColumnToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :name, :string
    add_column :companies, :address, :string
    add_column :companies, :category, :string
  end
end
