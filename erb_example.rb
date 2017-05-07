require 'erb'
def put_string(string)
  puts string.result(binding)
end

@x = 42
@a = [1, 2, 3]
template = ERB.new "The value of x is: <%= @x %>"
line1 =  ERB.new "The Line1 :<% @a.each do |x|%> <%= x %> <% end %>"

put_string(template) 
put_string(line1)