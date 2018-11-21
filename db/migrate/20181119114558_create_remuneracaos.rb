class CreateRemuneracaos < ActiveRecord::Migration[5.2]
  def change
    create_table :remuneracaos do |t|
      t.string :nome
      t.string :estabelecimento
      t.string :cargo
      t.date :competencia
      t.decimal :provento

      t.timestamps
    end
  end
end
