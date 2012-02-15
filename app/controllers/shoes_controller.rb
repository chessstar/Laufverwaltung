# encoding: utf-8
class ShoesController < ApplicationController
	before_filter :require_login

  # GET /shoes
  # GET /shoes.json
  def index
    @shoes = current_user.shoes.sichtbar
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shoes }
    end
  end

  # GET /shoes/1
  # GET /shoes/1.json
  def show
    @shoe = current_user.shoes.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shoe }
    end
  end

  # GET /shoes/new
  # GET /shoes/new.json
  def new
    @shoe = current_user.shoes.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shoe }
    end
  end

  # GET /shoes/1/edit
  def edit
    @shoe = current_user.shoes.find(params[:id])
  end

  # POST /shoes
  # POST /shoes.json
  def create
    @shoe = current_user.shoes.build(params[:shoe])
		#Setze Namen zusammen, dieser wird in der Schuhverwaltung angezeigt
		@shoe.fullname = (params[:shoe][:brand].to_s)+(params[:shoe][:description].to_s)
    respond_to do |format|
      if @shoe.save
        format.html { redirect_to @shoe, notice: 'Neuen Laufschuh erfolgreich erzeugt' }
        format.json { render json: @shoe, status: :created, location: @shoe }
      else
        format.html { render action: "new" }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

	#def hide:
	#Blendet einzelne Schuhe aus der Liste aus, löschen ist nicht sinnvoll,
	#da dann die Runs nicht konsistent sind, da "Schuh" Pflichfeld ist
	def hide
    @shoe = current_user.shoes.find(params[:id])
		@shoe.viewable = false
		@shoe.save
    respond_to do |format|
      format.html { redirect_to runs_path }
		end
	end

	#def unhide:
	#Blendet alle ausgeblendeten Schuhe wieder ein
	def unhide
		@shoes = current_user.shoes.unsichtbar
		@shoes.each do |shoe|
			shoe.viewable=true
			shoe.save
		end
    respond_to do |format|
      format.html { redirect_to runs_path }
		end
	end

  # PUT /shoes/1
  # PUT /shoes/1.json
  def update
    @shoe = current_user.shoes.find(params[:id])

    respond_to do |format|
      if @shoe.update_attributes(params[:shoe])
        format.html { redirect_to runs_path, notice: 'Laufschuh erfolgreich geändert' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoes/1
  # DELETE /shoes/1.json
  def destroy
    @shoe = current_user.shoes.find(params[:id])
    @shoe.destroy

    respond_to do |format|
      format.html { redirect_to shoes_url }
      format.json { head :ok }
    end
  end

	def require_login
		unless user_signed_in?
			redirect_to login_path,
			alert: "Bitte zuerst anmelden"
		end
	end
end
