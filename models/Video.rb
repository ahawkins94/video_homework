class Video

	attr_accessor :id, :title, :description, :url, :genre

	def self.open_connection
		PGconn.connect( dbname: "video_list")
	end

#index
	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM video"

		results = conn.exec(sql)

		videos = results.map do |record|
			self.hydrate(record)
		end
		videos
	end

	def self.hydrate video_data

	    video = Video.new

	    video.id = video_data['id']
	    video.title = video_data['title']
	    video.description = video_data['description']
	    video.url = video_data['url']
	    video.genre = video_data['genre']

	    video

	

	def save
		conn = Post.open_connection
		if (!self.id)
			sql = "INSERT INTO video (title, description, url, genre) VALUES ( '#{self.title}', '#{self.description}', '#{self.url}', '#{self.genre}')"
		else
			sql = "UPDATE video SET title='#{self.title}', description='#{self.description}', url='#{self.url}', genre='#{self.genre}' WHERE id = #{self.id}"			
		end

		conn.exec(sql)
	end

end