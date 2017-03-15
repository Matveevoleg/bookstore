class CreateBooksAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :books_authors do |t|
      t.references :author, foreign_key: true
      t.references :book, foreign_key: true
    end
  end
end
