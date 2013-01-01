class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.timestamps
    end

    create_table :credentials do |t|
      t.integer :user_id, :null => false
      t.string :provider, :null => false
      t.string :identifier, :null => false
      t.timestamps
    end
  end
end
