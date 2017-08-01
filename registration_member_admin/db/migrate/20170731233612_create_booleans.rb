class CreateBooleans < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :booleans do |t|
      t.integer :code
      t.string :description, :limit => 30

      t.timestamps
    end
  end

  def self.down
  	drop_table :booleans
  end
end
