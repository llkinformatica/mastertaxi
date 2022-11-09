class TabelaPrecosValor < ApplicationRecord
  belongs_to :tabela_preco
  belongs_to :itinerario
end
