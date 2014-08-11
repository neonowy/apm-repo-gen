module ApmRepoGen
  class Application
    def initialize(argv)
      @params = parse_options(argv)
      !@params.nil? ? @pkgs = ApmRepoGen::Packages.new(@params) : @pkgs = ApmRepoGen::Packages.new()
    end

    def run
      @pkgs.write
      puts "#{@pkgs.length} packages."
      puts "Done!"
    end


    def parse_options(argv)
      if argv.length == 1
        if argv[0] == "-h"
          puts "Usage: ApmRepoGen [PATH]"
          exit
        else
          return argv[0]
        end
      end
    end
  end
end
