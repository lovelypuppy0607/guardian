require "./guardian/*"
require "option_parser"

init = false
options_parser = OptionParser.new do |options|
  options.on "init", "--init", "Generates the .guardian.yml file" do
    init = true
  end
end

options_parser.parse(ARGV.clone)

Guardian::Watcher.new(init)
