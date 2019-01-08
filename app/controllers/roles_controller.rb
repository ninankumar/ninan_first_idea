class RolesController < ApplicationController
  def index
    @q = Role.ransack(params[:q])
    @roles = @q.result(:distinct => true).includes(:movied, :actors).page(params[:page]).per(10)

    render("role_templates/index.html.erb")
  end

  def show
    @role = Role.find(params.fetch("id_to_display"))

    render("role_templates/show.html.erb")
  end

  def new_form
    @role = Role.new

    render("role_templates/new_form.html.erb")
  end

  def create_row
    @role = Role.new

    @role.movied_id = params.fetch("movied_id")
    @role.actors_id = params.fetch("actors_id")
    @role.characters_id = params.fetch("characters_id")

    if @role.valid?
      @role.save

      redirect_back(:fallback_location => "/roles", :notice => "Role created successfully.")
    else
      render("role_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_movie
    @role = Role.new

    @role.movied_id = params.fetch("movied_id")
    @role.actors_id = params.fetch("actors_id")
    @role.characters_id = params.fetch("characters_id")

    if @role.valid?
      @role.save

      redirect_to("/movies/#{@role.movied_id}", notice: "Role created successfully.")
    else
      render("role_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_actor
    @role = Role.new

    @role.movied_id = params.fetch("movied_id")
    @role.actors_id = params.fetch("actors_id")
    @role.characters_id = params.fetch("characters_id")

    if @role.valid?
      @role.save

      redirect_to("/actors/#{@role.actors_id}", notice: "Role created successfully.")
    else
      render("role_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @role = Role.find(params.fetch("prefill_with_id"))

    render("role_templates/edit_form.html.erb")
  end

  def update_row
    @role = Role.find(params.fetch("id_to_modify"))

    @role.movied_id = params.fetch("movied_id")
    @role.actors_id = params.fetch("actors_id")
    @role.characters_id = params.fetch("characters_id")

    if @role.valid?
      @role.save

      redirect_to("/roles/#{@role.id}", :notice => "Role updated successfully.")
    else
      render("role_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_movied
    @role = Role.find(params.fetch("id_to_remove"))

    @role.destroy

    redirect_to("/movies/#{@role.movied_id}", notice: "Role deleted successfully.")
  end

  def destroy_row_from_actors
    @role = Role.find(params.fetch("id_to_remove"))

    @role.destroy

    redirect_to("/actors/#{@role.actors_id}", notice: "Role deleted successfully.")
  end

  def destroy_row
    @role = Role.find(params.fetch("id_to_remove"))

    @role.destroy

    redirect_to("/roles", :notice => "Role deleted successfully.")
  end
end
