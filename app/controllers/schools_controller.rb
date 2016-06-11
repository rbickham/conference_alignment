class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new
    @school.joined = params[:joined]
    @school.school_nickname = params[:school_nickname]
    @school.conference_name = params[:conference_name]
    @school.school_name = params[:school_name]
    @school.image_url = params[:image_url]

    if @school.save
      redirect_to "/schools", :notice => "School created successfully."
    else
      render 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])

    @school.joined = params[:joined]
    @school.school_nickname = params[:school_nickname]
    @school.conference_name = params[:conference_name]
    @school.school_name = params[:school_name]
    @school.image_url = params[:image_url]

    if @school.save
      redirect_to "/schools", :notice => "School updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])

    @school.destroy

    redirect_to "/schools", :notice => "School deleted."
  end
end
