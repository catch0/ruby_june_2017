#1
=begin
i = 1
num = 255
while i <= num do
   puts " #{i}"
   i +=1
end
=end

# 2

i = 1
num = 255
while i <= num do
   unless i%2 ==0
   puts " #{i}"
   end
   i +=1
end

#3
=begin
i = 0
num = 255
count = 0
while i <= num do
   puts "New number: #{i} Sum: #{count}"
     i +=1
    count = count + i
end
=end

#4
=begin
x = [1,3,5,7,9,13]
for i in x
    puts " whats up? the value is #{i}"
end
=end

#5
#x = [1,3,5,7,9,13]
#puts x.min

#6
#x = [-5,-12,-20]
#puts x.max

#7
=begin
a = [2,6]
sum = 0
a.each { |b| sum += b }
average = sum / a.length
puts average
=end

#8
=begin
arr = []
for i in 0..255
    unless i%2 ==0
    arr.push(i)
    end
end
print arr
=end

#9
=begin
a = [1,3,5,7]
y = 3
a.each {|x| puts x unless x<y}
=end

#10
=begin
a = [1,3,5,10,-2]
a.map! {|a|a**2}
print a
=end

#11
=begin
a=[1,5,10,7,-2]
for i in 0...a.length
    if a[i] < 0
        a[i]=0
    end
end
print a
=end

#12
=begin
x = [1,5,10,-2]
stuff=Hash.new
stuff["max"]=x.max
stuff["min"]=x.min
stuff["avg"]=x.reduce(:+)/x.length.to_f
puts stuff
=end
#13

#13
#x = [1,5,10,7,-2]
#x.push(x.shift())
#print x


#13
=begin
a=[1,5,10,7,-2]
for i in 0...a.length
    if a[i] < 0
        a[i]="what!!"
    end
end
print a
=end
