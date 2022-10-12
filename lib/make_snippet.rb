def make_snippet(str)
    if str.split(' ').length > 5
      return str.split(' ').first(5).join(' ') + '...'
    else return str
  end 
end         
 # make_snippet("hello")


 