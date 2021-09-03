class CreateGerenciadorMaquinas < ActiveRecord::Migration[6.1]
  def change
    create_table :gerenciador_maquinas do |t|
      t.string :machine_type
      t.string :name
      t.text :description
      t.integer :month
      t.date :purchace_date
      t.boolean :broken

      t.timestamps
    end
  end
end
