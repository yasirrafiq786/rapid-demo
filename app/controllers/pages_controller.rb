class PagesController < ApplicationController
  def home
    @jobs = Job.where(accepted: false)
  end
end
