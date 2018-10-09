class ThingcommentsController < ApplicationController
	http_basic_authenticate_with name: "smw", password: "flyeaglesfly", only: [:destroy]

	def create
      @thing = Thing.find(params[:thing_id])
      @thingcomment = @thing.thingcomments.create(thingcomment_params)
      redirect_to thing_path(@thing)
	end

	def destroy
      @thing = Thing.find(params[:thing_id])
      @thingcomment = @thing.thingcomments.find(params[:id])
      @thingcomment.destroy
      redirect_to thing_path(@thing)
	end

	private def thingcomment_params
      params.require(:thingcomment).permit(:username, :body)
    end
end
