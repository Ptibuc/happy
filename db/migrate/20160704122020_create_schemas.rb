class CreateSchemas < ActiveRecord::Migration
  def change
    create_table :schemas do |t|
      t.string :name
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
