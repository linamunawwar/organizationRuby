class OrganizationsController < ApplicationController

  before_action :user_signed_in?
  before_action :set_organization, only: %i[ show edit update destroy ]
  helper_method :current_user

  # GET /organizations or /organizations.json
  def index
    @organizations = Organization.all
  end

  # GET /organizations/1 or /organizations/1.json
  def show
    @persons = Person.where(organization_id: params[:id])
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations or /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: "Organization was successfully created." }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1 or /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: "Organization was successfully updated." }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1 or /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: "Organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    if params[:search].blank?
      redirect_to organizations_path and return
    else
      @parameter = params[:search].downcase
      # @results = Organization.all.where("lower(name) LIKE :search", search: "%#{@parameter}")
      # @matchOrganizations = Organization.where("name LIKE ?", "%#{@parameter}%")
      # @matchPerson = Person.search("%#{@parameter}")
      @organizations = Organization.includes(:persons).references(:persons).search(params[:search])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_params
      params.require(:organization).permit(:name, :phone, :email, :website, :logo)
    end
end
