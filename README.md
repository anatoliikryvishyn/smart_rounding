# smart_rounding

If you have an array of float numbers and you need to round them in such way:
Sum of all rounded elements are equal the rounded sum of elements

# What issues does it solve
`basic_array = [3.3, 3.3, 3.3]`
If you will round every element in `basic_array`, you will get 
`rounded_array = [3, 3, 3]`
Sum of elements in `basic_array` is equal 9.9 and if we round it we will get 10
Sum of elements in `rounded_array` is equal 9 and if we round it we will get 9
`10 != 9`
So here is the question. How should we round elements in the array, so their sum will be equal to the rounded sum?

# Installation
`gem 'smart_rounding'`

`bundle install`

# Examples

```ruby
require 'smart_rounding'

array  = [3.3, 3.3, 3.3]
sr = SmartRounding.new(array)

sr.rounded_array() #=> [4, 3, 3]
sr.rounded_sum()   #=> 10
sr.rounds_equal?() #=> true



array = [1.23, 2.54, 3.1, 9.33, 1.2, -1.34, 4.89, 9, 81.1]
sr = SmartRounding.new(array)

sr.rounded_array() #=> [1, 3, 3, 9, 1, -1, 5, 9, 81] 
sr.rounded_sum()   #=> 111 
sr.rounds_equal?() #=> true
```
