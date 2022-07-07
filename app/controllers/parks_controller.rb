class ParksController < ApplicationController
  before_action :set_park, only: [:show, :update, :destroy]

  # GET /parks
  def index
    @parks = Park.all

    render json: @parks
  end

  # GET /parks/1
  def show
    render json: @park
  end

  # POST /parks
  def create
    @park = Park.new(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  def update
    if @park.update(park_params)
      render json: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # POST /parks/random
  def random
    @park = Park.new(name: [Faker::Fantasy::Tolkien.location,  Faker::JapaneseMedia::OnePiece.island,Faker::JapaneseMedia::DragonBall.planet,Faker::Space.moon,Faker::Space.constellation,Faker::Mountain.name].sample, nearest_town: [Faker::Books::Lovecraft.location,Faker::Books::Dune.city,Faker::Games::Witcher.location, Faker::Games::WarhammerFantasy.location,Faker::JapaneseMedia::OnePiece.location,Faker::Nation.capital_city,Faker::WorldCup.city].sample, state: Faker::Address.state, area: Faker::Number.between(from: 1, to: 142069), designated: Faker::Date.between(from: '1872-03-01', to: Date.today))

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end


  # DELETE /parks/1
  def destroy
    @park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = Park.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def park_params
      params.permit(:name, :nearest_town, :state, :area, :designated)
    end
end
