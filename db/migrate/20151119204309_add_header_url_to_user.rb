class AddHeaderUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :header_url, :string
  end
end
