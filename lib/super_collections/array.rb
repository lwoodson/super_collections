require 'delegate'

class Array
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
