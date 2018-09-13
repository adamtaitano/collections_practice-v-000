def sort_array_asc(array)
  sorted_array.sort
end

def sort_array_desc(array)
  desc_array = array.sort do |a, b|
    b <=> a
  end
  return desc_array
end

def sort_array_char_count(array)
    return array.sort do |a, b|
      if a.length == b.length
        0
      elsif a.length < b.length
        -1
      elsif a.length > b.length
        1
      end
    end
end

def swap_elements(array)
  second_element = array[1]
  third_element = array[2]
  array[1] = third_element
  array[2] = second_element
  return array
end
#
def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha = []
  array.each do |string|
    string[2] = "$"
    kesha.push(string)
  end
  kesha
end

def find_a(array)
  array.select { |a| a.start_with?("a")}
end

def sum_array(array)
  array.inject { |sum, n| sum + n }
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index == 1
      element
    else
      element + "s"
    end
  end
end
