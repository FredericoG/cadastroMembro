class CreateProfessions < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :professions do |t|
      t.integer :code
      t.string :profession, :limit => 100

      t.timestamps
    end
  end

  def self_down
  	drop_table :professions
  end
end
