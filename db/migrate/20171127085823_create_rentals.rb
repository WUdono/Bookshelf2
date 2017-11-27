class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.datetime :rental_date
      t.references :Book, foreign_key: true
      t.references :User, foreign_key: true
      t.references :Log, foreign_key: true

      t.timestamps
    end
  end
end
