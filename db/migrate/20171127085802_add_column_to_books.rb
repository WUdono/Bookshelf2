class AddColumnToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :publisherName, :string
    add_column :books, :salesDate, :string
    add_column :books, :mediumImageUrl, :string
    add_column :books, :isbn, :string
    add_column :books, :rental_count, :integer
  end
end
