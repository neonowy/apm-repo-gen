require_relative "../lib/ApmRepoGen"

puts ARGV
puts ARGV.length
ApmRepoGen::Application.new(ARGV).run
