class AddColumnAtendenteToContrato < ActiveRecord::Migration
  def change
    add_reference :contratos, :atendente, index: true, foreign_key: true
  end
end
