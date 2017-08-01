class CreateMemberRegisterExportErrors < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :member_register_export_errors do |t|
      t.string :field, :limit => 100
      t.string :error, :limit => 255
      t.integer :line

      t.timestamps
    end
  end

  def self.down
  	drop_table :member_register_export_errors
  end
end
