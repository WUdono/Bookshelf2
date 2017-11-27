class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.datetime :rental_date
      t.datetime :return_date
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end
end
