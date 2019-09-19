class RemoveSecretKeyFromUserRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_requests, :secret_key, :string
  end
end
