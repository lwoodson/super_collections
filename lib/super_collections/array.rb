require 'delegate'

class Array
  # Convert the flattened array to an array of tuples.  Length of tuples can be
  # specified with the first argument (default is 2).  What to pad incomplete 
  # tuples with can be specified with the second argument (default is nil).  
  # Examples:
  #
  #   [1,2,3,4].tupelize
  #   => [[1, 2], [3, 4]]
  #
  #   [1,2,3,4,5,6].tupelize(3)
  #   => [[1,2,3],[4,5,6]]
  #
  #   [1,2,3].tupelize
  #   => [[1,2],[3,nil]
  #
  #   [1,2,3].tupelize(2,0)
  #   => [[1,2],[3,0]]
  def tupelize(tuple_size=2, pad_with=nil)
    result = []
    inject(result) do |result, element|
      tuple = result.delete_at(-1) || []
      if tuple.size < tuple_size
        tuple << element
      else
        result << tuple
        tuple = [element]
      end
      result << tuple
    end
    last_tuple = result[-1]
    (1..tuple_size - last_tuple.size).each{|i| last_tuple << pad_with}
    result
  end
end
