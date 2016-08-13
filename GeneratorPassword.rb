class GeneratorPassword

  def get_password(count=7)
    password=""
    count.times do
      password+=generate
    end
    puts password
  end

  def generate()
    random = Random.rand(48..122)
    case random
    when 48..57
      random.chr
    when 65..90
      random.chr
    when 97..122
      random.chr
    else
      return generate
    end
  end
