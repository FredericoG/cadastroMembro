class CreateMemberRegistraitons < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :member_registraitons do |t|
      t.integer :code
      t.string :name, :limit => 100
      t.string :email, :limit => 50
      t.date :birth
      t.decimal :cpf
      t.string :rg, :limit => 30
      t.integer :maritalStatus
      t.date :weddingDate
      t.string :spouge, :limit => 100
      t.string :fatherName, :limit => 100
      t.string :motherName, :limit => 100
      t.integer :profession_id
      t.integer :phone_id
      t.text :image
      t.integer :baptized
      t.date :baptizedDate
      t.integer :son_id
      t.integer :sex
      t.integer :maritalCode
      t.integer :member
      t.integer :evangelical
      t.integer :street_id
      t.string :note, :limit => 255

      t.timestamps
    end
    add_index :member_registraitons, :code
    add_index :member_registraitons, :email, unique: true
    add_index :member_registraitons, :cpf, unique: true
    add_index :member_registraitons, :rg, unique: true
  end

  def self.down
    drop_table :member_registraitons
  end
end
