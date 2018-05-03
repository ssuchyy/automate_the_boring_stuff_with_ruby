CURRENT_WORKING_DIRECTORY = Dir.pwd
AMERICAN_DATA_REGEX = /(?<month>0[1-9]|1[0-2])-(?<day>0[1-9]|[1-3]\d)-(?<year>\d\d\d\d)/

Dir.foreach(CURRENT_WORKING_DIRECTORY).reject { |f| File.directory?(f) }.each do |file|
  if file.match(AMERICAN_DATA_REGEX)
    puts file
    File.rename(file, file.gsub(AMERICAN_DATA_REGEX, '\k<day>-\k<month>-\k<year>'))
  end
end
