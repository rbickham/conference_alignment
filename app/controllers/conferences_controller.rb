class ConferencesController < ApplicationController
  def index
    @conferences = Conference.all
  end

  def show
    @conference = Conference.find(params[:id])
  end

  def new
    @conference = Conference.new
  end

  def create
    @conference = Conference.new
    @conference.headquarters = params[:headquarters]
    @conference.members = params[:members]
    @conference.founded = params[:founded]
    @conference.conference_nickname = params[:conference_nickname]
    @conference.conference_name = params[:conference_name]
    @conference.image_url = params[:image_url]

    if @conference.save
      redirect_to "/conferences", :notice => "Conference created successfully."
    else
      render 'new'
    end
  end

  def edit
    @conference = Conference.find(params[:id])
  end

  def update
    @conference = Conference.find(params[:id])

    @conference.headquarters = params[:headquarters]
    @conference.members = params[:members]
    @conference.founded = params[:founded]
    @conference.conference_nickname = params[:conference_nickname]
    @conference.conference_name = params[:conference_name]
    @conference.image_url = params[:image_url]

    if @conference.save
      redirect_to "/conferences", :notice => "Conference updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @conference = Conference.find(params[:id])

    @conference.destroy

    redirect_to "/conferences", :notice => "Conference deleted."
  end
end
