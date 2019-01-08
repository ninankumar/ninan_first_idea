class WatchListsController < ApplicationController
  def index
    @q = WatchList.ransack(params[:q])
    @watch_lists = @q.result(:distinct => true).page(params[:page]).per(10)

    render("watch_list_templates/index.html.erb")
  end

  def show
    @watch_list = WatchList.find(params.fetch("id_to_display"))

    render("watch_list_templates/show.html.erb")
  end

  def new_form
    @watch_list = WatchList.new

    render("watch_list_templates/new_form.html.erb")
  end

  def create_row
    @watch_list = WatchList.new

    @watch_list.watchlist_id = params.fetch("watchlist_id")

    if @watch_list.valid?
      @watch_list.save

      redirect_back(:fallback_location => "/watch_lists", :notice => "Watch list created successfully.")
    else
      render("watch_list_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @watch_list = WatchList.find(params.fetch("prefill_with_id"))

    render("watch_list_templates/edit_form.html.erb")
  end

  def update_row
    @watch_list = WatchList.find(params.fetch("id_to_modify"))

    @watch_list.watchlist_id = params.fetch("watchlist_id")

    if @watch_list.valid?
      @watch_list.save

      redirect_to("/watch_lists/#{@watch_list.id}", :notice => "Watch list updated successfully.")
    else
      render("watch_list_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @watch_list = WatchList.find(params.fetch("id_to_remove"))

    @watch_list.destroy

    redirect_to("/watch_lists", :notice => "Watch list deleted successfully.")
  end
end
