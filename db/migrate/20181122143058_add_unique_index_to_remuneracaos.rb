class AddUniqueIndexToRemuneracaos < ActiveRecord::Migration[5.2]
  def change
    add_index :remuneracaos, [:competencia, :nome], unique: true
  end
end