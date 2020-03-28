# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @menus = Menu.all
    actual_week
  end

  def actual_week
    today = Date.today
    @days_from_this_week = (today.at_beginning_of_week..today.at_end_of_week).map
  end
end
