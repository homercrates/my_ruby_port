class CreateThingcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :thingcomments do |t|
      t.string :username
      t.text :body
      t.references :thing, foreign_key: true

      t.timestamps
    end
  end
end
