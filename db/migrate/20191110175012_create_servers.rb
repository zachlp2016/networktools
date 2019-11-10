class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.string :server_name
      t.string :ip_address
      t.string :operating_system

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
