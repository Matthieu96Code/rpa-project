class CreatePockets < ActiveRecord::Migration[7.0]
  def change
    create_table :pockets do |t|
      t.references :author, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
