if __FILE__ == $0
  c.b(a)
  puts "Enter length password"
  count = gets.chomp
  GeneratorPassword.get_password(count.to_i)
end
