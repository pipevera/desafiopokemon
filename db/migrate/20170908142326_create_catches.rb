class CreateCatches < ActiveRecord::Migration[5.0]
  def change
    create_table :catches do |t|
      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
