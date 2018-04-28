class String
  def regex_strip(char='\s')
    self.gsub! /(^(#{char})+)|((#{char})+$)/, ''
  end
end
