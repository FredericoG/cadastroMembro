class CreateCities < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :cities do |t|
      t.integer :codeCity
      t.integer :codeUf
      t.string :descriptionCity, :limit => 100
      t.string :cityZipCode, :limit => 10
      t.integer :uf_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
