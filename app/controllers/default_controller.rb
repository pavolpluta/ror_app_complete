class DefaultController < ApplicationController
  before_action :authenticate, only: [:contact]
  def buildings
    @buildings = Building.all
  end

  def rooms

  end

  def contact

  end

  def schedule

  end

  def day_info

  end
end