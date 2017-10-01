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

end