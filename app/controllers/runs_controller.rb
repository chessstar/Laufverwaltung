# encoding: utf-8
class RunsController < ApplicationController

	before_filter :require_login
  # GET /runs
  # GET /runs.json

	def output
		startdatum = params[:startdatum].to_date
		enddatum = params[:enddatum].to_date
		respond_to do |format|
			if enddatum.nil? or startdatum.nil? or (startdatum > enddatum)
				@msg = 'Datum nicht korrekt'
				flash.now[:notice] = @msg
				format.js
			else
 				@msg = Run.nutzer(current_user.id).zeitraum(startdatum, enddatum).sum(:distance)
				flash.now[:alert] = @msg
				format.js
		  end
		end
	end

  def index
    @runs = current_user.runs.order( 'run_at DESC' )
		@nickname = current_user.nickname
		@summe_distance_all = Run.nutzer(current_user.id).sum(:distance)
		startdatum = '2011-01-01'.to_date
		enddatum = '2011-12-12'.to_date
		@summe_distance_2011 = Run.nutzer(current_user.id).zeitraum(startdatum, enddatum).sum(:distance)
		startdatum = '2012-01-01'.to_date
		enddatum = '2012-12-31'.to_date
		@summe_distance_2012 = Run.nutzer(current_user.id).zeitraum(startdatum, enddatum).sum(:distance)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @runs }
    end
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
    @run = current_user.runs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @run }
    end
  end

  # GET /runs/new
  # GET /runs/new.json
  def new
    @run = current_user.runs.build
		@schuhe_eines_nutzer = Shoe.nutzer(current_user.id)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run }
    end
  end

  # GET /runs/1/edit
  def edit
    @run = current_user.runs.find(params[:id])
		@schuhe_eines_nutzer = Shoe.nutzer(current_user.id)
  end

  # POST /runs
  # POST /runs.json
  def create
    @run = current_user.runs.build(params[:run])
		# Errechne Gesamtzeit in Sekunden
		@run.runtime_in_seconds = (params[:run][:run_hours].to_i)*3600+(params[:run][:run_minutes].to_i)*60+(params[:run][:run_seconds].to_i)
    respond_to do |format|
      if @run.save
        format.html { redirect_to runs_path, notice: 'Lauf erfolgreich erstellt.' }
        format.json { render json: @run, status: :created, location: @run }
      else
        format.html { render action: "new" }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /runs/1
  # PUT /runs/1.json
  def update
    @run = current_user.runs.find(params[:id])
		# Errechne Gesamtzeit in Sekunden
		@run.runtime_in_seconds = (params[:run][:run_hours].to_i)*3600+(params[:run][:run_minutes].to_i)*60+(params[:run][:run_seconds].to_i)

		respond_to do |format|
      if @run.update_attributes(params[:run])
        format.html { redirect_to runs_path, notice: 'Lauf erfolgreich aktualisiert.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
  def destroy
    @run = current_user.runs.find(params[:id])
    @run.destroy

    respond_to do |format|
      format.html { redirect_to runs_url }
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
