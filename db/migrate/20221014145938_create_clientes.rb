class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf_cnpj
      t.string :sigla, limit: 10
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
