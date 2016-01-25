# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  digits = []
  input = phone_number_str.split(//)
  input.each do |x|
    if x == "0" || x == "1" || x == "2" || x == "3" || x == "4" || x == "5" || x == "6" || x == "7" || x == "8" || x == "9"
      digits.push(x)
    end
  end
  digits = digits.join
  return "(" + digits[0..2] + ")" + " " + digits[3..5] + "-" + digits[6..10]
end

