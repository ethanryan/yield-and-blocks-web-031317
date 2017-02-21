# def hello_t(array)
#   i = 0 #counter variable i set to 0
#   while i < array.length #start while loop execute code below as long as i is less than the length of the array
#     yield array[i] #grab the value of each successive index element and yield it to a block
#     i = i + 1 #increment value of i variable
#   end #end while loop
# end #end method

### ??? below doesn't work::
 # hello_t(["Tim", "Tom", "Jim"]) do |name|
 #    if name.start_with?("T")
 #        puts "Hi, #{name}"
 #    end #end if statement
 #  end #end do loop

  # def hello_t(array)
  #   i = 0
  #   while i < array.length
  #     yield(array[i])
  #     i = i + 1
  #   end
  #   array
  # end

  def hello_t(array)
    if block_given?
      i = 0
      while i < array.length
        yield(array[i])
        i = i + 1
      end
      array
    else
      puts "Hey! No block was given!"
    end
  end

###below method works, did this on my own::::

# def hello_t(array)
#   array.each do |name|
#     if name.start_with?("T")
#       puts "Hi, #{name}"
#     end #end if statement
#   end #end do loop
# end #end method

# call your method here!


# ["Tim", "Tom", "Jim"].each do |name|
#     if name.start_with?("T")
#         puts "Hi, #{name}"
#     end
# end
