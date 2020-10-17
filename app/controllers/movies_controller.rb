class MoviesController < ApplicationController

  # เป็น class controller ที่จะสืบทอดมาจาก ApplicationController
  # รับ http request มา
  # ดึงหรือส่งข้อมูลจาก Models ที่เชื่อมกับ Database 
  # พร้อมทั้งนำข้อมูลที่ได้นำไปส่งให้ views

  def index
    # ดึงข้อมูลจากในตาราง movies ทั้งหมด
    @movies = Movie.all.order('title')
  end

  def show
    # ดึงข้อมูล movie id จาก URI route
    id = params[:id]
    # หา id ของ movie จาก unique id
    @movie = Movie.find(id) 

  end

  def new
    # ตั้งค่า movie instance ที่ว่าง ใหม่
    @movie = Movie.new
  end

  def create
    # ให้ params เรียก movie 
    params.require(:movie)
    # เก็บ title ,rating และ release_date ไว้เพื่อนำไปเรียกใช้ต่อไป
    permitted = params[:movie].permit(:title,:rating,:release_date,:description)
    # สร้าง title ,rating และ release_date
    @movie = Movie.create!(permitted)

    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movie_path(@movie)
  end

  def edit
    # หา id ของ movie นั้นเพื่อนำไปแก้ไข
    @movie = Movie.find params[:id]
  end

  def update
    # หา id ของ movie
    @movie = Movie.find params[:id]
    # เก็บ title ,rating และ release_date ไว้เพื่อนำไปเรียกใช้ต่อไป
    permitted = params[:movie].permit(:title,:rating,:release_date,:description)
    # update title ,rating และ release_date ที่ได้ทำการแก้ไขไป
    @movie.update_attributes!(permitted)

    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    # หา id ของ movie
    @movie = Movie.find(params[:id])
    # ลบ movie นี้ทิ้ง
    @movie.destroy

    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
