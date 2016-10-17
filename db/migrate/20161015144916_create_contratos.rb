class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :Con_Id
      t.date :Con_Dtvenda
      t.decimal :Con_Vendatotal
      t.decimal :Con_Desconto

      t.timestamps null: false
    end
  end
end
