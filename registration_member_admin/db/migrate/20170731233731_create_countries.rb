class CreateCountries < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :countries do |t|
      t.string :iso, :limit => 100
      t.string :iso3, :limit => 100
      t.integer :codeNum
      t.string :name, :limit => 100

      t.timestamps
    end
  end

  def self_down
  	drop_table :countries
  end
end
