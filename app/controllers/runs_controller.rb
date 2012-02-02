# encoding: utf-8
class RunsController < ApplicationController

	before_filter :require_login

  # GET /runs
  # GET /runs.json
  def index
    @runs = current_user.runs
		@email = current_user.email

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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run }
    end
  end

  # GET /runs/1/edit
  def edit
    @run = current_user.runs.find(params[:id])
  end

  # POST /runs
  # POST /runs.json
  def create
    @run = current_user.runs.build(params[:run])

    respond_to do |format|
      if @run.save
        format.html { redirect_to @run, notice: 'Run was successfully created.' }
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

    respond_to do |format|
      if @run.update_attributes(params[:run])
        format.html { redirect_to @run, notice: 'Run was successfully updated.' }
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
