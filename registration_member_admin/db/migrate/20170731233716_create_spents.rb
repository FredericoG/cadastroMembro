class CreateSpents < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :spents do |t|
      t.integer :spentCode
      t.string :spentDescription, :limit => 100
      t.integer :month
      t.timestamp :time
      t.decimal :totalAmountSpent, :decimal, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :spents    
  end
end
