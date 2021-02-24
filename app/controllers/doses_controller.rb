class DosesController < ApplicationController
    def new 
        # find cocktail instance
        @cocktail = Cocktail.find(params[:cocktail_id])
        # @create a new cocktail instance 
        @dose = Dose.new
    end 

    def create
        @dose = Dose.new(dose_params)
        # need cocktail ID to associate dose with corresponding cocktail
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose.cocktail = @cocktail
        
        if @dose.save
            redirect_to cocktail_path(@cocktail)
        else 
            render :new
        end 

    end 

    def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        redirect_to cocktail_path(@dose.cocktail)
    end 

    def dose_params
        params.require(:dose).permit(:description, :ingredient_id)
    end 
end 