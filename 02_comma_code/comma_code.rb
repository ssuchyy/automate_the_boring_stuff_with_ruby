class Array
  def comma_code
    return self.join(' and ') if self.size < 3
    self.slice(0, self.size - 1).join(', ') + ' and ' + self.slice(-1).to_s
  end
end
