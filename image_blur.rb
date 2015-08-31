class Image
  include Comparable
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

  def <=>(img)
    self.data <=> img.data
  end

  def blur
    blur = @data.map do |x|
      x.dup
    end

    # Find the ones to blur
    @data.each_index do |row|
      @data[row].each_index do |cell|
        if @data[row][cell] == 1
          blur[row-1][cell] = 1
          blur[row+1][cell] = 1
          blur[row][cell-1] = 1
          blur[row][cell+1] = 1
        end
      end
    end

    @data = blur
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
