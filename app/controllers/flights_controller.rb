class FlightsController < ApplicationController
    def index
        @all_flights = Flight.available_flights(params)
        @flight = Flight.first
        @departure_options = Airport.all.map{ |f| [ f.name, f.id ] }
        @arrival_options = Airport.all.map{ |f| [ f.name, f.id ] }
    end
    def show

    end
end
