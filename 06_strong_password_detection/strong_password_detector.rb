class StrongPasswordDetector
  def detect(string)
    valid_length?(string, 8) &&
      uppercase?(string) &&
      lowercase?(string) &&
      digit?(string)
  end

  private

  def valid_length?(string, length)
    string.length > length
  end

  def uppercase?(string)
    !!string.match(/[A-Z]+/)
  end

  def lowercase?(string)
    !!string.match(/[a-z]+/)
  end

  def digit?(string)
    !!string.match(/\d+/)
  end
end
