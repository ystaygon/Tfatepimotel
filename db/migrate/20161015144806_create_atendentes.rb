class CreateAtendentes < ActiveRecord::Migration
  def change
    create_table :atendentes do |t|
      t.string :Ate_Nome
      t.date :Ate_Dtadmissao
      t.string :Ate_Nrrg
      t.string :Ate_Nrcpf
      t.date :Ate_Dtnascimento
      t.decimal :Ate_Vlsalario
      t.date :Ate_Dtpagamento

      t.timestamps null: false
    end
  end
end
