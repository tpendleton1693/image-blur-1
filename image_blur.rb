class Image
	attr_reader :data

	def initialize(data)
		@data = data
	end

	def output_image
		@data.each do |i|
			row = i.join
			puts row
		end
	end


	def ==(image)
		self.data == image.data
	end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
