class ThingsController < ApplicationController
	http_basic_authenticate_with name: "smw", password: "flyeaglesfly", except: [:index, :show, :new]

	def index
	  @thing = Thing.all
	end

	def show
	  @thing = Thing.find(params[:id])
	end

	def new
	  @thing = Thing.new
	end

	def create
	  #render plain: params[:thing].inspect
	  #use above for a. quick test
	  @thing = Thing.new(thing_params)

	  if(@thing.save)
	    redirect_to @thing
	  else
	  	render 'new'
	  end
	end

	def edit
	  @thing = Thing.find(params[:id])
	end

	def update
	  @thing = Thing.find(params[:id])

	  if(@thing.update(thing_params))
	    redirect_to @thing
	  else
	  	render 'edit'
	  end
	end

	def destroy
	  @thing = Thing.find(params[:id])
	  @thing.destroy

	  redirect_to things_path
	end

	private def thing_params
      params.require(:thing).permit(:title, :body)
    end

end
