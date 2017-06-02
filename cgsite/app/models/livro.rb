class Livro < ApplicationRecord
  validates :nome_autor, presence: true

  validates :sobrenome_autor, presence:true

  validates :registro, presence:true

  validates :titulo, presence: true

  validates :cdu, presence: true

  validates :idioma_livro, presence: true

  validates :nome_serie, presence: true

  validates :volume_serie, presence: true, numericality: {greater_than: 0}

  validates :editora, presence: true

  validates :ano, presence: true

  validates :edicao, presence: true, numericality: {greater_than: 0}

  validates :isbn, presence: true, length: {minimum: 13, maximum: 13}

  validates :data_aquisicao, presence: true

  validates :origem_aquisicao, presence: true

  validates :classificacao_etaria, presence: true

  validates :renovavel, presence: true

end