class CreateCrossings < ActiveRecord::Migration[6.0]
  def change
    create_table :crossings do |t|
      t.references :companies, null: false, foreign_key: true
      t.string :typeDeclaration
      t.string :ocorrencia
      t.string :warning

      t.timestamps
    end
  end
end
