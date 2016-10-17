class AddColumnQuartoToContrato < ActiveRecord::Migration
  def change
    add_reference :contratos, :cliente, index: true, foreign_key: true
  end
end
