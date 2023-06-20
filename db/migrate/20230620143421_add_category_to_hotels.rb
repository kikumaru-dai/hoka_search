class AddCategoryToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :category, :string
  end
end
