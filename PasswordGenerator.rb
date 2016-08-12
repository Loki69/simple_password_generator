def generate(count=7)
password=""
count.times do
password+=Random.rand(65..122).chr
end
puts password
end

if __FILE__ == $0
generate
end