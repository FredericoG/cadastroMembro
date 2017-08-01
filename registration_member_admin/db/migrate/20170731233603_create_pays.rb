class CreatePays < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :pays do |t|
      t.integer :payCode
      t.string :payDescription, :limit => 100 
      t.decimal :totalAmountPay, :decimal, :precision => 8, :scale => 2
      t.datetime :dueDate
      t.string :download, :limit => 100
      t.string :card, :limit => 20

      t.timestamps
    end
  end

  def self.down
    drop_table :pays
  end
end
