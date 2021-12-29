class AddExperienceIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :experience, null: false, foreign_key: true
  end
end
