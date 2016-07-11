
require 'pry'
class Validator

  def initialize (name, email)
    @name = name
    @email = email
  end

  def check_password(password)
      digits = password.scan(/\d/).length
      special = password.scan(/\W/).length
      uppercase = password.scan(/\p{Upper}/).length
      lowercase = password.scan(/\p{Lower}/).length
      contains_name = password.include? @name
      contains_email = password.include? @email

      if password.length < 7
        false
      elsif  (uppercase < 1)  || (lowercase < 1) || (digits < 1) || ( special < 1)
        false
      elsif contains_email || contains_name
        false
      else
        true
      end
  end

end


# Validator.new.check_password("Valentine#$%^{@^&!!!23345")
