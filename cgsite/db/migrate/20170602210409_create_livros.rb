class CreateLivros < ActiveRecord::Migration[5.1]
  def change
    create_table :livros do |t|
      t.string :nome_autor
      t.string :sobrenome_autor
      t.integer :registro
      t.string :titulo
      t.string :cdu
      t.string :idioma_livro
      t.string :nome_serie
      t.integer :volume_serie
      t.string :editora
      t.integer :ano
      t.integer :edicao
      t.integer :isbn
      t.date :data_aquisicao
      t.text :origem_aquisicao
      t.boolean :classificacao_etaria
      t.boolean :renovavel
      t.text :link_download

      t.timestamps
    end
  end
end
