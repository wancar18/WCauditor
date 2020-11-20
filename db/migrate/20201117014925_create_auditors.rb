class CreateAuditors < ActiveRecord::Migration[6.0]
  def change
    create_table :auditors do |t|
      t.references :companies, null: false, foreign_key: true
      t.string :name
      t.integer :crc
      t.string :cvm
      t.string :integer

      t.timestamps
    end
  end
end
