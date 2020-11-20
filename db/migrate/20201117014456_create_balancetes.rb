class CreateBalancetes < ActiveRecord::Migration[6.0]
  def change
    create_table :balancetes do |t|
      t.references :companies, null: false, foreign_key: true
      t.string :descrition
      t.float :valueDebit
      t.float :valueCredit
      t.integer :numDoc
      t.integer :nunLan

      t.timestamps
    end
  end
end
