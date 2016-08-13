require_relative 'GeneratorPassword'

if __FILE__ == $0
  puts "Enter length password"
  count = gets.chomp
  password_generat = GeneratorPassword.new
  password = password_generat.generate_password count.to_i
  puts password
end
