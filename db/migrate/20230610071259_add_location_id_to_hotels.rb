class AddLocationIdToHotels < ActiveRecord::Migration[6.1]
  def change
    add_reference :hotels, :location, foreign_key: true
  end
end
