#!/usr/bin/env ruby -w

require 'clipboard'
require 'yaml'

STORAGE_PATH = ENV['HOME'] + '/.mcb'

command = ARGV[0]
key =     ARGV[1]

case command
when 'save'
  if key
    File.exist?(STORAGE_PATH) ? storage = YAML.load_file(STORAGE_PATH) : storage = {}
    storage[key] = Clipboard.paste
    File.open(STORAGE_PATH, 'w') { |f| YAML.dump(storage, f) }
  else
    STDERR.puts 'mcb: key not specified'
  end
when 'load'
  if key
    return unless File.exist?(STORAGE_PATH)
    storage = YAML.load_file(STORAGE_PATH)
    Clipboard.copy(storage[key])
  else
    STDERR.puts 'mcb: key not specified'
  end
when 'list'
  return unless File.exist?(STORAGE_PATH)
  storage = YAML.load_file(STORAGE_PATH)
  storage.each { |key, value| puts "#{key}: #{value}" }
else
  STDERR.puts "mcb: command #{command} not supported"
end
