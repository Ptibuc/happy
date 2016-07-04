class CreateComptes < ActiveRecord::Migration
  def change
    create_table :comptes do |t|
      t.string :name
      t.string :key

      t.timestamps null: false
    end
  end
end
