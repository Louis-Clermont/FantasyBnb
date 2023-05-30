class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
