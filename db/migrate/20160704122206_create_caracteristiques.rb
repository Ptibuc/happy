class CreateCaracteristiques < ActiveRecord::Migration
  def change
    create_table :caracteristiques do |t|
      t.string :name
      t.references :schema, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
