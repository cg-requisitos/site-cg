json.extract! livro, :id, :nome_autor, :sobrenome_autor, :registro, :titulo, :cdu, :idioma_livro, :nome_serie, :volume_serie, :editora, :ano, :edicao, :isbn, :data_aquisicao, :origem_aquisicao, :classificacao_etaria, :renovavel, :link_download, :created_at, :updated_at
json.url livro_url(livro, format: :json)
