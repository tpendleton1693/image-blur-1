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
		blur = []

		# Find the ones to blur
		@data.each_index do |row|
			@data[row].each_index do |cell|
				if @data[row][cell] == 1
					ones << [row, cell]
				end
			end
		end
		puts ones.inspect

		@data.each do |row|
			blur << row
		end

		ones.each do |row, cell|
			blur[row-1][cell] = 1
		end
		puts blur.inspect

	end


end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
image.blur
