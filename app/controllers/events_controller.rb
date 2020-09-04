class EventsController < ApplicationController

  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      #format.xml { render :xml => @events }
      format.json

    end

  end

  def show
    @event = Event.find_by(id: params[:id])
    @start = @event.start.strftime("%Y年%m月%d日 %H:%M")
    @end = @event.end.strftime("%Y年%m月%d日 %H:%M")
    @atds = Atd.where(event_id: params[:id])
    @map = Map.find_by(id: @event.map_id)

    if @current_user
     @atd = Atd.find_by(event_id: params[:id] , user_id: @current_user.id)
    end

  end

  def new
    @maps = Map.all

  end

  def create
    @title = params[:title]
    @start = params[:start_date] + "T" + params[:start_hour] + ":" + params[:start_min]
    @end = params[:end_date] + "T" + params[:end_hour] + ":" + params[:end_min]

    if @title && @start && @end
      Event.create(title:@title, start:@start, end:@end, map_id: params[:map_id][:id])
      flash[:notice] = "登録しました！"
      redirect_to("/events/index")
    else
      flash.now[:notice] = "未登録個所があります！"
      render("events/new")
    end

  end

  def update
    @event = Event.find_by(id: params[:id])
    @title = params[:title]
    @start = params[:start_date] + "T" + params[:start_hour] + ":" + params[:start_min]
    @end = params[:end_date] + "T" + params[:end_hour] + ":" + params[:end_min]

    @event.update(title:@title, start:@start, end:@end, map_id: params[:map_id][:id])
    flash[:notice] = "更新しました！"
    redirect_to("/events/index")

  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    flash[:notice] = "削除しました"
    redirect_to("/events/index")

  end



  def edit

  end

  def attendance_create
    @event_id = params[:id]

    Atd.create(user_id:@current_user.id,
      event_id:@event_id,
      attendance:params[:attendance],
      memo:params[:memo])

    flash[:notice] = "登録しました！"
    redirect_to("/events/index")

  end

  def attendance_update
    @event_id = params[:id]
    @atd = Atd.find_by(event_id: @event_id)
    @atd.update(attendance:params[:attendance],memo:params[:memo])

    flash[:notice] = "登録しました！"
    redirect_to("/events/index")

  end



end
