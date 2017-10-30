class BodyMassController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def calculate_bmi
    @result = BodyMassService.obtain_body_mass(params[:weight], params[:height])
    respond_to do |format|
      format.js
    end
  end
end