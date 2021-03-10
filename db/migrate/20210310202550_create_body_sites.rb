class CreateBodySites < ActiveRecord::Migration[6.0]
  def change
    create_table :body_sites do |t|
      t.string :identifier, null: false
      t.string :name, null: false
      t.string :region

      t.timestamps
    end

    add_index :body_sites, :identifier, unique: true
    add_index :body_sites, :name, unique: true
  end
end
