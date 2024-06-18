class FixAuthorsTable < ActiveRecord::Migration[7.1]
  def change
    # Update comments table to use user_id instead of author_id
    rename_column :comments, :author_id, :user_id

    # Update posts table to use user_id instead of author_id
    rename_column :posts, :author_id, :user_id

    # remove foreign keys
    remove_foreign_key "comments", "authors"
    remove_foreign_key "posts", "authors"

    # Add new foreign key constraints
    add_foreign_key "comments", "users"
    add_foreign_key "posts", "users"
  end
end
