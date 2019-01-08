class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :movied_id
      t.integer :actors_id
      t.integer :characters_id

      t.timestamps
    end
  end
end
