class AddIndexForOss < ActiveRecord::Migration[5.2]
  def change
    add_index :remuneracaos, [:competencia, :nome, :estabelecimento], unique: true
  end
end
