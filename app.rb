require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do

  parcel_input = Parcel.new(params.fetch("side1").to_i, params.fetch("side2").to_i, params.fetch("side3").to_i, params.fetch("weight").to_i)

  @parcel_output = parcel_input.cost_to_ship(params.fetch("distance").to_i, params[:speed].to_i)
  erb(:result)
end
