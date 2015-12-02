class MuralController < ApplicationController
  def mostrar
    @mural = Mural.find_by_id(params[:id])
    if not @mural.present?
      redirect_to('/404')
      return
    end
    @recados = @mural.recados
  end
  def listar
    @lista = Mural.all.order(dono: :asc)
  end
  def adicionar
    @mural = Mural.find_by_id(params[:id])
    if not @mural.present?
      redirect_to('/404')
      return
    end
    Recado.create(mensagem: params[:m].to_s, mural: @mural)
    @recados = @mural.recados
    render 'mostrar'
  end
  def listar_top
    @lista_crua = Mural.joins(:recados).order('count(recados.id) ASC').pluck('murals.id, murals.dono, count(recados.id)')
    @lista=@lista_crua.map{|i| {id: i[0], dono: i[1], recados: i[2] } }
  end
end
