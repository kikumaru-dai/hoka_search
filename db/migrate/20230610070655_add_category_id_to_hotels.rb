class AddCategoryIdToHotels < ActiveRecord::Migration[6.1]
  def change
    add_reference :hotels, :category, foreign_key: true
  end
end
