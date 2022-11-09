class Cliente < ApplicationRecord
	validates_presence_of :nome, :cpf_cnpj
	validates_uniqueness_of :sigla

	has_one_attached :imagem
end
