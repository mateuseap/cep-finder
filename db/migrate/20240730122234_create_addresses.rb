class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :state, null: false
      t.string :city, null: false
      t.string :neighborhood, null: false
      t.string :areacode, null: false

      t.timestamps
    end
  end
end