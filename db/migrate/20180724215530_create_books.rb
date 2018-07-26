class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :book_owned
      t.boolean :favorite
      t.string :image_url
      t.string :year_written

      t.timestamps
    end
  end
end
