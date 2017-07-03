class SmartRounding
	def initialize array
		@array = array
	end

	def rounded_sum
		array.inject(:+).round()
	end

	def rounded_array
		array.each_with_index.map{ |number, index| indexes_of_ceil_numbers.include?(index) ? number.ceil : number.floor }
	end

	def rounds_equal?
		rounded_array.inject(:+) == rounded_sum
	end	

	private

	def fractionals
		array.map{|number| number.modulo(1)}
	end

	def sum_of_fractionals
		fractionals.inject(:+)
	end

	def ceil_numbers_count
		sum_of_fractionals.round(0)
	end	

	def ceil_numbers
		fractionals.each_with_index.max(ceil_numbers_count)
	end	

	def indexes_of_ceil_numbers
		ceil_numbers.map(&:last)
	end	
		
	attr_reader :array
end
