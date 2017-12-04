module Admin
  class AdminController < ApplicationController
    before_action :authenticate

  end
end