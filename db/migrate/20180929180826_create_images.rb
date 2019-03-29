class CreateImages < ActiveRecord::Migration[5.2]
  def self.up 
    create_table :images do |t|
      t.column "name", :string 
      t.column "width", :integer 
      t.column "height", :integer 
    end 
  end 
 
  def self.down 
    drop_table :images 
  end 
end
