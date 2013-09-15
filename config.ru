require './lib/exec'
require 'sinatra'

class App < Sinatra::Base

  configure do
    set :server, :puma
  end

  get '/' do
    e = Exec.new.execute(params[:code])
    e.result.to_s
  end
end

run App