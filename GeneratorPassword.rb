class GeneratorPassword

  CONSONANT="bcdfghjklmnpqrstvwxz"
  TWO_CONSONANT = ["kl","lk","st","str","sp","pr","scr","dr","kr","tr","vr"]
  VOWEL="aaaeeeiioouuy"

  def generate_password(count=7)
    password=""
    i=0
    while password.length < count
      case i%2
      when 0
        password += add_random_count_consonant(password, count)
      else
        password += get_vowel
      end
      i += 1
    end
    password
  end

  private

  def  add_random_count_consonant(password,count)
    if password.length + 2 < count
      random_number_to(1) == 0 ? get_consonant : get_two_consonant
    else
      get_consonant
    end
  end

  def random_number_to(count=1)
    Random.rand(0..count)
  end

  def get_consonant
    CONSONANT[random_number_to(CONSONANT.length-1)]
  end

  def get_two_consonant
    TWO_CONSONANT[random_number_to(TWO_CONSONANT.length-1)]
  end

  def get_vowel
    VOWEL[random_number_to(VOWEL.length-1)]
  end
end
