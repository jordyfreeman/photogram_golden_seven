class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @thephoto=Photo.find_by({:id=>params[:id]})
  end


  def new_form
  end


  def create_row
    p=Photo.new
    p.caption=params[:the_caption]
    p.source=params[:the_source]
    p.save

  end



  def delete_row
    p=Photo.find_by({:id=>params[:id]})
    p.destroy
    redirect_to("http://localhost:3000/photos")
  end


  def edit_form
    #render("edit_form.html.erb")
    @thephoto=Photo.find_by({:id=>params[:id]})
    #p.caption=params[:the_caption]
    #p.source=[:the_source]
    #p.save
  end


  def edit_row
    p=Photo.find_by({:id=>params[:id]})
    p.caption=params[:the_caption]
    p.source=params[:the_source]
    p.save
    redirect_to("http://localhost:3000/photos")
  end


end
