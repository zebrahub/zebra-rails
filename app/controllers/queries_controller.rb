class QueriesController < ApplicationController
  def index
    @queries = Query.where(user_id: params[:user_id])
  end

  def create
    @query = Query.create(query_params)
    if @query.save
      render json: @query
    end
  end

  def update
    unless params[:id]
      render status: :bad_request
    end
    @query = Query.find_by(id: params[:id])
    unless @query
      head :no_content
    end
    if @query.update_attributes(query_params)
      render json: @query
    end
  end

  def destroy
    unless params[:id]
      render status: :bad_request
    end
    @query = Query.find_by(id: params[:id])
    unless @query
      head :no_content
    end
    @query.destroy
    render json: @query, status: :ok
  end

  private
    def query_params
      params.require(:query).permit(
        :description,
        :query_string,
        :title,
        :user_id,
      )
    end
end
