module V1
  class TitlesController < ApiController
    def index
      @titles = TitleType.all
      render json: @titles
    end
  end
end