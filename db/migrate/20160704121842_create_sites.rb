class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :url
      t.string :key
      t.references :compte, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
