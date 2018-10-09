class CreateThingComents < ActiveRecord::Migration[5.2]
  def change
    create_table :thing_coments do |t|
      t.string :username
      t.text :body
      t.references :thing, foreign_key: true

      t.timestamps
    end
  end
end
