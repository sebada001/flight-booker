class FlightsController < ApplicationController
    def index
    end
    def show
        @flights = Flight.all
    end
end
