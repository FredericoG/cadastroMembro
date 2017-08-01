class CreateUfs < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :ufs do |t|
      t.integer :codeUf
      t.string :acronymUf, :limit => 3
      t.string :descriptionUf, :limit => 100

      t.timestamps
    end
  end

  def self.down
  	drop_table :ufs
  end
end
