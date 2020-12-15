# your code goes 
require 'pry'
def begins_with_r(ary)
  ary.each do |i|
    if i[0] != "r"
      return false
    end
  end
  true
end

def contain_a(ary)
  result = []
  ary.each do |i|
    i.include?("a") ? (result.push(i)) : next
  end
  result
end

def first_wa(ary)
  ary.find{|word|
    word[0..1] == "wa"
  }
end

def remove_non_strings(ary)
  ary.filter{|word|
    word.class == String 
  }
end

def count_elements(ary)
  result = Array.new
  counter = Hash.new
  ary.each do |i|
    key = i[:name]
    if counter.has_key?(key) 
      counter[key] += 1
    else
      counter[key] = 1
    end
  end

  counter.each_pair do |k,v|
    result.push(Hash[:name, k, :count, v])
  end
  result  
end

def merge_data(ary1, ary2)
  result = Array.new
  ary1.each_with_index do |i, ind|
    result.push(ary1[ind].merge(ary2[ind]))
  end
  result 
end

def find_cool(ary)
  result = Array.new  
  ary.each do |i|
    if i[:temperature] == "cool"
      result.push(i)
    end
  end
  result
end

def organize_campuses(hash)
  result = Hash.new
  hash.each_pair do |k,v|
    location = v[:location]
    # binding.pry
    if result.has_key?(location)
      result[location].push(k)
    else
      result[location] = Array(k)
    end
  end
  result
end