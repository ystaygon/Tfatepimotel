class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :Pro_Id
      t.string :Pro_Noproduto
      t.string :Pro_Nrquantidade
      t.string :Pro_Vlcompra
      t.string :Pro_Vlvenda

      t.timestamps null: false
    end
  end
end
