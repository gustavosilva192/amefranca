class Remuneracao < ApplicationRecord
	  scope :nome, 				-> (name) { where("nome iLIKE ?", "%#{name}%")}
	  scope :competencia, -> (comp) { where("competencia = ?", "#{comp}-01")}
end
