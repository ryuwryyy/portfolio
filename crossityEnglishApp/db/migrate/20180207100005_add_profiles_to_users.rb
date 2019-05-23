class AddProfilesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :language, :string
    add_column :users, :pastime, :string
  end
end
