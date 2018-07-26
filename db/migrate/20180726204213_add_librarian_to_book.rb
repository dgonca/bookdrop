class AddLibrarianToBook < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :librarian, foreign_key: { to_table: :users }
  end
end
