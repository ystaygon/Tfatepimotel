class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :Car_Nurplaca
      t.string :Car_Endereco
      t.string :Cad_Cpf
      t.date :Car_Dtentrada
      t.time :Car_Hrentrada

      t.timestamps null: false
    end
  end
end
