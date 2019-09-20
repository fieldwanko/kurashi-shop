class RemoveSecretKeyFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :secret_key, :string
  end
end
