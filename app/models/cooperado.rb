class Cooperado < ApplicationRecord
	validates_presence_of :nome, :matricula
	validates_uniqueness_of :matricula

	has_one_attached :imagem
end
