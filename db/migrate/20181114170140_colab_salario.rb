class ColabSalario < ActiveRecord::Migration[5.2]
  def change
  	create_table :proventos do |t|
      t.string :name
      t.string :estabelecimento
      t.string :cargo
      t.date :compotencia
      t.float :provento
    end
  end
end
