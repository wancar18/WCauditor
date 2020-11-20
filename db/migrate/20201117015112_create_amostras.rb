class CreateAmostras < ActiveRecord::Migration[6.0]
  def change
    create_table :amostras do |t|
      t.references :balancetes, null: false, foreign_key: true
      t.string :indicePapel
      t.string :resultAnalise

      t.timestamps
    end
  end
end
