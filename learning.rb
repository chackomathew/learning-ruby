puts 'Hello!'

# this is a comment
# variables named using snake case
lander_count = 10

# methods - return result of last statement
def double(val)
  # 2 space indentation
  val*2
end

# statements evaluate as expressions
puts double 2
puts double(2)

$global_variable = 1
puts $global_variable

# can output a string
#print "Enter your name:"
#name=gets
# can output a variable
#puts "Your name is " + name

# backticks to execute command
res = `time`
puts res
# or %x
res = %x(time  /t)
puts res
# or system method
res = system "time /t"
puts res