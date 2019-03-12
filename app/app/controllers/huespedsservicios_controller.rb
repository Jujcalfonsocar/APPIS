class HuespedsServiciosController < ApplicationController

    def new
        @solicitud = HuespedsServicios.new
    end
    
    def create
         @solicitud = HuespedsServicios.new(huespedsservicios_params)
        if @solicitud.save
            flash[:notice] = "La solicitud se creo satisfactoriamente"
            redirect_to huespedsservicio_path(@solicitud)
        else
            render "new"
        end
    end
    
    def show 
        @solicitud = HuespedsServicios.find(params[:id])
    end
    
    def edit
        @solicitud = HuespedsServicios.find(params[:id])
    end 
    
    def update
        @solicitud = HuespedsServicios.find(params[:id])
         if @solicitud.update(huespedsservicio_params)
            flash[:notice] = "La solicitud se edito satisfactoriamente"
            redirect_to huespedsservicio_path(@solicitud)
        else
            render "edit"
        end
    end
    
    def destroy
        @solicitud = HuespedsServicios.find(params[:id])
        @solicitud.destroy
        flash[:notice] = "La solicitud se eliminó satisfactoriamente"
        redirect_to huespedsservicios_path
    end
    
    def index
        @solicitudes = HuespedsServicios.all
    end
    
    private 
        def huespedsservicio_params
         params.require(:huespedsservicio).permit(:servicio_id,:cedula_huesped,:precio,:especificaciones)
        end
    
end