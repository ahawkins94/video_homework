class Video

	attr_accessor :title, :description, :url, :genre

	def self.open_connection
		PGconn.connect( dbname: "video_list")
	end




end