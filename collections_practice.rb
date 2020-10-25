require 'pry'


def sort_array_asc(integers)
  integers.sort
end

def sort_array_desc(integers)
  integers.sort do |a, b|
    if a < b 
      1
    elsif a == b
      0
    else 
      -1
    end 
  end  
end  

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.size < b.size
      -1
    elsif a.size == b.size 
      0
    else
      1    
    end
  end  
end  

def swap_elements(array)
  new_array = []
  array.collect.with_index do |element, index|
    if index == 1 || index == 2
      new_array << element
    end  
  end  
  array[2] = new_array[0]
  array[1] = new_array[1]
  array
end  

def reverse_array(array)
  array.reverse
end  

def kesha_maker(array)
  new_array = []
  array.map do |name|
    name[2] = '$'
    new_array << name
  end  
  new_array
end  


def find_a(array)
  array.select {|item| item.start_with?('a')}
end  

def sum_array(array)
  array.inject{|sum ,num| sum + num}
  # sum = 0
  # array.each {|num| sum += num}
  # sum
end

def add_s(array)
  array.map.with_index do |word, index|
    word << 's' unless index == 1
    word
  end  
end  