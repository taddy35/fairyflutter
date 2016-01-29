class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside of this method, is translate to SQL code and modified the database (currently, SQLite)
      add_column :users, :username, :string # Add a new column to table "users", called "username" and of type "string"
      add_index :users, :username, unique: true # First, index usernames for guick (rapid) lookup. Second, ensure usernames are ALWAYS unique.
  end
end
