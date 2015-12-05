class CreateTableAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :user_name
      t.string :password_digest
      t.string :link
      t.string :email
      t.references :user
    end
  end
end
