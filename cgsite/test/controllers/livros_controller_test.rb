require 'test_helper'

class LivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livro = livros(:one)
  end

  test "should get index" do
    get livros_url
    assert_response :success
  end

  test "should get new" do
    get new_livro_url
    assert_response :success
  end

  test "should create livro" do
    assert_difference('Livro.count') do
      post livros_url, params: { livro: { ano: @livro.ano, cdu: @livro.cdu, classificacao_etaria: @livro.classificacao_etaria, data_aquisicao: @livro.data_aquisicao, edicao: @livro.edicao, editora: @livro.editora, idioma_livro: @livro.idioma_livro, isbn: @livro.isbn, link_download: @livro.link_download, nome_autor: @livro.nome_autor, nome_serie: @livro.nome_serie, origem_aquisicao: @livro.origem_aquisicao, registro: @livro.registro, renovavel: @livro.renovavel, sobrenome_autor: @livro.sobrenome_autor, titulo: @livro.titulo, volume_serie: @livro.volume_serie } }
    end

    assert_redirected_to livro_url(Livro.last)
  end

  test "should show livro" do
    get livro_url(@livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_livro_url(@livro)
    assert_response :success
  end

  test "should update livro" do
    patch livro_url(@livro), params: { livro: { ano: @livro.ano, cdu: @livro.cdu, classificacao_etaria: @livro.classificacao_etaria, data_aquisicao: @livro.data_aquisicao, edicao: @livro.edicao, editora: @livro.editora, idioma_livro: @livro.idioma_livro, isbn: @livro.isbn, link_download: @livro.link_download, nome_autor: @livro.nome_autor, nome_serie: @livro.nome_serie, origem_aquisicao: @livro.origem_aquisicao, registro: @livro.registro, renovavel: @livro.renovavel, sobrenome_autor: @livro.sobrenome_autor, titulo: @livro.titulo, volume_serie: @livro.volume_serie } }
    assert_redirected_to livro_url(@livro)
  end

  test "should destroy livro" do
    assert_difference('Livro.count', -1) do
      delete livro_url(@livro)
    end

    assert_redirected_to livros_url
  end
end
