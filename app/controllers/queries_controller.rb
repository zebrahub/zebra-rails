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
