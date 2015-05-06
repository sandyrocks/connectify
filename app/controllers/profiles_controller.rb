class ProfilesController < ApplicationController
  def index
  end

  def new
  	@profiles = Profile.new
  end

  def create
  	@profiles = Profile.new(profile_params)
  	if @profiles.save
  		redirect_to profiles_path, notice: 'Profile has been created Successfully'
  	else
  		render 'new'
  	end
  end

  private
  	def profile_params
  		params.require(:profile).permit(:first_name, :last_name, :age, :city, :state, :country, :mobile_number)
  	end
end




