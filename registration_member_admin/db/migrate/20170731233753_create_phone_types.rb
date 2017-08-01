class CreatePhoneTypes < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :phone_types do |t|
      t.string :description, :limit => 100

      t.timestamps
    end
  end

  def self.down
  	drop_table :phone_types
  end
end
