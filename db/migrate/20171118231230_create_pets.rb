class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :doadornome
      t.string :doadoremail
      t.string :petnome
      t.string :petraca
      t.string :petimagem
      t.string :petimagem_url
      t.text :petobservacoes
      t.time :petinsercao
      t.integer :petidade
      t.string :pettamanho
      t.integer :petchora
      t.integer :petsegue
      t.integer :petagitado
      t.integer :petlateestranhos
      t.integer :petavanca
      t.integer :petproblemassaude

      t.timestamps
    end
  end
end
