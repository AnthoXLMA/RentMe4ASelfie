class RemoveCompanyIdFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :products, :company, null: false, foreign_key: true
  end
end
