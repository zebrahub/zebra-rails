class QueriesController < ApplicationController
  def index
    @queries = Query.where(user_id: params[:user_id])
  end

  def create

  end
end
