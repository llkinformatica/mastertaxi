json.extract! cliente, :id, :nome, :cpf_cnpj, :sigla, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :telefone, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
