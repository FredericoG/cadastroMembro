class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :neighborhoods do |t|
      t.integer :codeNeighborhood
      t.integer :codeCity
      t.string :descriptionNeighborhood, :limit => 100
      t.integer :city_id

      t.timestamps
    end
  end

  def self.down
  	drop_table :neighborhoods
  end
end
