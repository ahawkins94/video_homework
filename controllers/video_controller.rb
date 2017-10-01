class VideosController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views') }

	get '/videos' do
		@page_header = "All Videos"
		@videos = Video.all
		erb :"videos/index"
	end

	get '/videos/new' do
		erb :"videos/new"
	end

	get '/videos/:id' do
		id = params[:id].to_i
		@video = Video.find id
		@page_header = "Video #{id+1}"
		erb :"videos/show"	
	end

	post "/videos" do
		new_video = Video.new
		new_video.title = params[:title]	
		new_video.description = params[:description]	
		new_video.url = params[:url]	
		new_video.genre = params[:genre]	
		new_video.save

		redirect '/videos'
	end

	get "/videos/:id/edit" do
 		@video = Video.find(params[:id])		
		erb :"videos/edit"
	end

	put "/videos/:id" do
		video = Video.find(params[:id])
		video.title = params[:title]
		video.description = params[:description]
		video.url = params[:url]
		video.genre = params[:genre]
		video.save

		redirect "/video/#{video.id}"

	end

end