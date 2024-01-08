class SouvenirsController < ApplicationController
    def index
    end
  
    def new
      @souvenir = Souvenir.new
    end
  
    def show
      @souvenir = Souvenir.find_by(id: params[:id])
    end
  
    def create
      @souvenir = Souvenir.new(souvenir_params)
      params[:souvenir][:question] ? @souvenir.question = params[:souvenir][:question].join("") : false
      if @souvenir.save
          flash[:notice] = "診断が完了しました"
          redirect_to souvenir_path(@souvenir.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def souvenir_params
        params.require(:souvenir).permit(:question1, :question2, :question3, :question4)
    end
end
