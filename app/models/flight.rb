class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"

    def self.available_flights(params)
        flights = []
        Flight.all.each { |f| flights << f if f.is_available?(params, f)}
        return flights
    end

    def is_available?(params, f)
        unless(params[:departure_airport_id].nil?)
            date = Date.new(params[:flight]["start_date(1i)"].to_i, params[:flight]["start_date(2i)"].to_i, params[:flight]["start_date(3i)"].to_i)
            puts date
            return true if (
                (date.year == f.start_date.year && date.month == f.start_date.month && date.day == f.start_date.day) &&
                params[:departure_airport_id].to_i == f.departure_airport_id &&
                params[:arrival_airport_id].to_i == f.arrival_airport_id
            ) 
            return false
        end
        return false
    end
end
