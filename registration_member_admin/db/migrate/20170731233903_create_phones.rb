class CreatePhones < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :phones do |t|
      t.integer :ddd
      t.integer :phone
      t.string :contact, :limit => 100
      t.integer :phoneType_id
      t.integer :phoneOption

      t.timestamps
    end
    add_index :phones, [:ddd, :phone], unique: true
  end

  def self.down
    drop_table :phones
  end
end
