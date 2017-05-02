class PrintersController < ApplicationController
    def printer_params
        params.require(:printer).permit(:printerID, :reserveTime, :reserveDate, :studentID)
    end
    def index
        @printers = Printer.all
    end
    def show
        id = params[:id] # retrieve movie ID from URI route
        @printer = Printer.find(id) # look up movie by unique ID
        # will render app/views/movies/show.html.haml by default
    end
    def create
        @printer = Printer.create!(printer_params)
        flash[:notice] = "#{@printer.printerID} was successfully created."
        redirect_to printers_path
    end
    def new
        @printer = Printer.new
        # default: render 'new' template
    end
    # in movies_controller.rb

    def edit
      @printer = Printer.find params[:id]
    end
    
    def update
      @printer = Printer.find params[:id]
      @printer.update_attributes!(printer_params)
      flash[:notice] = "#{@printer.printerID} was successfully updated."
      redirect_to printer_path(@printer)
    end
    def destroy
      @printer = Printer.find(params[:id])
      @printer.destroy
      flash[:notice] = "Printer '#{@printer.printerID}'was deleted."
      redirect_to printers_path
    end
end
