class CreateCooperados < ActiveRecord::Migration[7.0]
  def change
    create_table :cooperados do |t|
      t.string :nome
      t.integer :matricula, limit: 6, unique: true
      t.string :apelido
      t.date :nascimento
      t.string :telefone, limit: 20
      t.string :celular, limit: 20
      t.string :logradouro, limit: 60
      t.string :numero, limit: 10
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado, limit: 2
      t.string :cep, limit: 10
      t.string :cpf, limit: 20, unique: true
      t.string :cnh_registro, limit: 20, unique: true
      t.string :cnh_categoria, limit: 5
      t.date :cnh_vencimento
      t.string :tipo_sanguineo, limit: 10
      t.date :data_admissao
      t.date :data_demissao

      t.timestamps
    end
  end
end
