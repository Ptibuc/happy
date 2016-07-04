class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :condition
      t.text :libelle
      t.references :caracteristique, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
