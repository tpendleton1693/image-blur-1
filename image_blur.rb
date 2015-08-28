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

	def blur
		ones = []
		blur = @data

		# Find the ones
		@data.each_index do |row|
			@data[row].each_index do |cell|
				if @data[row][cell] == 1
					ones << [row, cell]
				end
			end
		end
		puts ones.inspect
	end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur
