class AudienceMembersController < ApplicationController
  before_action :set_audience_member, only: [:show, :edit, :update, :destroy]

  # GET /audience_members
  # GET /audience_members.json
  def index
    @audience_members = AudienceMember.all
  end

  # GET /audience_members/1
  # GET /audience_members/1.json
  def show
  end

  # GET /audience_members/new
  def new
    @audience_member = AudienceMember.new
  end

  # GET /audience_members/1/edit
  def edit
  end

  # POST /audience_members
  # POST /audience_members.json
  def create
    @audience_member = AudienceMember.new(audience_member_params)

    respond_to do |format|
      if @audience_member.save
        format.html { redirect_to @audience_member, notice: 'Audience member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @audience_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @audience_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audience_members/1
  # PATCH/PUT /audience_members/1.json
  def update
    respond_to do |format|
      if @audience_member.update(audience_member_params)
        format.html { redirect_to @audience_member, notice: 'Audience member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @audience_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audience_members/1
  # DELETE /audience_members/1.json
  def destroy
    @audience_member.destroy
    respond_to do |format|
      format.html { redirect_to audience_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audience_member
      @audience_member = AudienceMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audience_member_params
      params.require(:audience_member).permit(:email)
    end
end
