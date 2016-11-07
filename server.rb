require 'pry'
require 'sinatra'
$default_options = [
'No way',
'Keep dreaming',
'indubitably',
'Fo sure',
'perhaps',
'umm, are Tacos delicious?']
$answers_options = [
'No way',
'Keep dreaming',
'indubitably',
'Fo sure',
'perhaps',
'umm, are Tacos delicious?']

get '/' do
  erb :index
end

get '/add' do
  erb :add
end

post '/add' do
  @users_input = params[:new_answer]
  $answers_options.push(@new_answer)
  @answers_options = $answers_options
  erb :added
end

get '/reset' do
  erb :reset
end

get '/ask' do
  erb :ask
end

post '/ask' do
  @users_input = params[:users_quest]
  $answers_options
  erb :results
end
