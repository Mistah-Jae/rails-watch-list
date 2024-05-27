class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :movie
      t.string :list
      t.text :comment

      t.timestamps
    end
  end
end
