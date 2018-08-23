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
    render status: :bad_request and return if params[:id].length <=0

    @query = Query.find_by(id: params[:id])
    head :no_content and return unless @query

    if @query.update_attributes(query_params)
      render json: @query
    end
  end

  def destroy
    render status: :bad_request and return if params[:id].length <= 0

    @query = Query.find_by(id: params[:id])
    head :no_content and return unless @query

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
