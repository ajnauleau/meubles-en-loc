class CreateMeubles < ActiveRecord::Migration[6.0]
  def change
    create_table :meubles do |t|
      t.string :category
      t.string :description
      t.integer :height
      t.integer :width
      t.integer :length
      t.integer :daily_rate
      t.boolean :disponibility
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
