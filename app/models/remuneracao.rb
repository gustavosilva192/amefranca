class Remuneracao < ApplicationRecord
	require 'csv'
	require 'activerecord-import/base'
	require 'activerecord-import/active_record/adapters/postgresql_adapter'
	validates :competencia, uniqueness: { scope: :nome }

  scope :nome, 							-> (name) { where("nome iLIKE ?", "%#{name}%")}
  scope :competencia, 			-> (comp) { where("competencia = ?", "#{comp}-01")}
  scope :estabelecimento, 	-> (estab) { where("estabelecimento LIKE ?", "#{estab}")}
  scope :cargo, 						-> (cargo) { where("cargo iLIKE ?", "%#{cargo}%")}

 	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			company_hash = Remuneracao.new
			company_hash.competencia = row[0]
			company_hash.estabelecimento = row[1]
			company_hash.nome = row[2]
			company_hash.cargo = row[3]
			company_hash.provento = row[4]
			company_hash.save
		end
	end
end
