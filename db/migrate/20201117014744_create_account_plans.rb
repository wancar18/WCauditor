class CreateAccountPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :account_plans do |t|
      t.references :balancetes, null: false, foreign_key: true
      t.integer :code
      t.string :descrition
      t.integer :group
      t.integer :codeRed

      t.timestamps
    end
  end
end
