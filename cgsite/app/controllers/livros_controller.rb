class LivrosController < ApplicationController
  before_action :set_livro, only: [:show, :edit, :update, :destroy]

  def index
    @livros = Livro.all
  end

  def new
    @livro = Livro.new
  end

  def create
    @livro = Livro.new(livro_params)

    respond_to do |format|
      if @livro.save
        format.html { redirect_to @livro, notice: 'Livro criado com sucesso' }
        format.json { render :show, status: :created, location: @livro }
      else
        format.html { render :new }
        format.json { render json: @livro.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @livro.update(livro_params)
        format.html { redirect_to @livro, notice: 'Livro atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @livro }
      else
        format.html { render :edit }
        format.json { render json: @livro.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @livro.destroy
    respond_to do |format|
      format.html { redirect_to livros_url, notice: 'Livro deletado com sucesso' }
      format.json { head :no_content }
    end
  end

  private
      @livro = Livro.find(params[:id])
    end

    def livro_params
      params.require(:livro).permit(:nome_autor, :sobrenome_autor, :registro, :titulo, :cdu, :idioma_livro, :nome_serie, :volume_serie, :editora, :ano, :edicao, :isbn, :data_aquisicao, :origem_aquisicao, :classificacao_etaria, :renovavel, :link_download)
    end
end
