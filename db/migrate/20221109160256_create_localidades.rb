class CreateLocalidades < ActiveRecord::Migration[7.0]
  def change
    create_table :localidades do |t|
      t.string :nome
      t.decimal :latitude, :precision => 15, :scale => 10
      t.decimal :longitude, :precision => 15, :scale => 10
      t.boolean :parada, default: false

      t.timestamps
    end
  end
end
