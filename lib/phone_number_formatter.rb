# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  number = Array.new(10)
  input = phone_number_str.split(//)
  input.each do |x|
    if digits.include?(x)
      number.push(x)
    end
  end
  number = number.join
  return "(" + number[0..2] + ")" + " " + number[3..5] + "-" + number[6..10]
end

