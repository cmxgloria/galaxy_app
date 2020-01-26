     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'


def run_sql(sql)
  conn = PG.connect(dbname: 'galaxy_app')
  result = conn.exec(sql)
  conn.close
  return result 
end

get '/' do
  @result = run_sql("select * from galaxy;")
  erb :index
end

get '/galaxy/new' do
  erb :new_galaxy
end

get '/galaxy/:id' do
  sql = "SELECT * FROM galaxy WHERE id = #{params[:id]};"
  @galaxy = run_sql(sql).first
  erb :details
end

post '/galaxy' do
  sql = "insert into galaxy (name, image_url) values ('#{params[:name]}', '#{params[:image_url]}');"
  run_sql(sql)
  redirect '/'
end

delete '/galaxy/:id' do
  sql =" delete from galaxy where id = #{params[:id]};"
  run_sql(sql)
  redirect '/'
end

get '/galaxy/:id/edit' do
  sql = "select * from galaxy where id = #{params[:id]};"
  @galaxy = run_sql(sql)[0]
  erb :edit_galaxy
end

patch '/galaxy/:id' do
  sql = "update * from galaxy set name = '#{params[:name]}', image_url = '#{params[:image_url]}' where id = #{params[:id]};"
  run_sql(sql)
  redirect "/galaxy/#{params[:id]}"
end

