class CreateContratosProdutosJoinTable < ActiveRecord::Migration
  def change
    create_join_table :contratos, :produtos do |t|
      # t.index [:contrato_id, :produto_id]
      # t.index [:produto_id, :contrato_id]
    end
  end
end
