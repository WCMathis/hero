class HomeController < ApplicationController

  before_action :common, only: [:index, :team]

  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @job_title = Faker::Job.title
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize

    @rand_num = rand(1..1000)
    @set_num = rand(1..4)

    # Randomly pick a character
    if @set_num == 1
      @set = "set1"
    elsif @set_num == 2
      @set = "set2"
    elsif @set_num == 3
      @set = "set3"
    else @set_num == 4
      @set = "set4"
    end

    # Randomly pick a background
    @bg_num = rand(1..2)
    if @bg_num == 1
      @bg = "bg1"
    else
      @bg = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: @set, bgset: @bg)
    
  end

  def index
  end

  def team
  end
  
end
