class AddAccountIdToUser < ActiveRecord::Migration[6.1]
  def change
    # This is enough; you don't need to worry about order
    create_join_table :users, :accounts
  end
end
