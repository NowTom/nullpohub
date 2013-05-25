class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email, default: ""
      t.string :encrypted_password, default: ""

      ## Trackable
      t.integer  :sign_in_count, default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## omniauth
      t.string   :uid, null: false

      t.timestamps
    end

    add_index :users, :uid, unique: true
  end
end
