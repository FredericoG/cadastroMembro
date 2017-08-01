class CreateSons < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :sons do |t|
      t.integer :code
      t.string :sonName, :limit => 100
      t.date :birthDate
      t.integer :memberCod

      t.timestamps
    end
  end

  def self.down
  	drop_table :sons
  end
end
