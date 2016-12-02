require "pry"



class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
		@mp3s = []
	end

	def files
		Dir.foreach(@path) do |file|
			if file.end_with?(".mp3")
				@mp3s << file
			end
		end
		@mp3s
	end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end


