require 'find'
require 'english'

DIR_PATH = ARGV[0]
TEXT = ARGV[1..-1].join(' ')

begin
  Find.find(DIR_PATH) do |path|
    next if File.directory?(path)
    begin
      File.open(path) do |file|
        file.each do |line|
          begin
            puts "#{path}:#{$INPUT_LINE_NUMBER} #{line}" if line =~ /#{TEXT}/
          rescue ArgumentError
            next
          end
        end
      end
    rescue Errno::EACCES
      puts "Access denied for #{path}"
      next
    end
  end
rescue Errno::ENOENT => e
  puts "regex_search: #{e.message}"
end
