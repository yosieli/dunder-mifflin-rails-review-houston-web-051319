class DogsController < ApplicationController
    def index
        @dogs= Dog.all
    end

    def new
        @dogs=Dog.new()
    end

    def create
        @dogs=Dog.create(dog_params[:dog])
        redirect_to dogs_path
    end
    def show
        @dog=Dog.find(params[:id])
    end
    
    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
    end

    def def dog_params
        params.permit(
            dog: [
                :name,
                :breed
                
            ]
        )
    end
end
