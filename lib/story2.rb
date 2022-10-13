def story2(str)
  if str[0] == str[0].upcase && str[-1] == '.' || str[-1] == '!' || str[-1] == '?'
    return str
  end
end 
puts story2('Hello!')
