class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|

      t.string :name, null: false
      t.string :image, null: false
      t.string :address, null:false
      t.string :describe, null:false
      t.string :title, null:false
      
      t.timestamps
    end
  end
end
