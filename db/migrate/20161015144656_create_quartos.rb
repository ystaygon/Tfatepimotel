class CreateQuartos < ActiveRecord::Migration
  def change
    create_table :quartos do |t|
      t.string :Qua_Nome
      t.string :Qua_Tipo
      t.string :Qua_Nometipo
      t.decimal :Qua_Vlpreco

      t.timestamps null: false
    end
  end
end
