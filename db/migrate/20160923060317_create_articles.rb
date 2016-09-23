class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 3
      t.string :description
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
