class ConferenceHistoriesController < ApplicationController
  def index
    @conference_histories = ConferenceHistory.all
  end

  def show
    @conference_history = ConferenceHistory.find(params[:id])
    @conference = Conference.new
    @school = School.new
  end

  def new
    @conference_history = ConferenceHistory.new
  end

  def create
    @conference_history = ConferenceHistory.new
    @conference_history.left = params[:left]
    @conference_history.joined = params[:joined]
    @conference_history.conference_id = params[:conference_id]
    @conference_history.school_id = params[:school_id]

    if @conference_history.save
      redirect_to "/conference_histories", :notice => "Conference history created successfully."
    else
      render 'new'
    end
  end

  def edit
    @conference_history = ConferenceHistory.find(params[:id])
  end

  def update
    @conference_history = ConferenceHistory.find(params[:id])

    @conference_history.left = params[:left]
    @conference_history.joined = params[:joined]
    @conference_history.conference_id = params[:conference_id]
    @conference_history.school_id = params[:school_id]

    if @conference_history.save
      redirect_to "/conference_histories", :notice => "Conference history updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @conference_history = ConferenceHistory.find(params[:id])

    @conference_history.destroy

    redirect_to "/conference_histories", :notice => "Conference history deleted."
  end
end
