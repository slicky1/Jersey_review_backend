class CreateJerseys < ActiveRecord::Migration[6.1]
  def change
    create_table :jerseys do |t|
      t.string :name
      t.string :img_source
      t.string :description
      t.references :team, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
