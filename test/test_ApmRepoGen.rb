require "coveralls"
Coveralls.wear!
require "ApmRepoGen/packages.rb"
require "test/unit"
require "json"

class TestApmRepoGen < Test::Unit::TestCase
	@@packages = ApmRepoGen::Packages.new(File.join(Dir.pwd, "test_files"))

	def test_packages
		assert_equal(["a", "abc"], @@packages.packages)
	end

	def test_packages_length
		#packages = Packages.new

		assert_equal(2, @@packages.length)
	end

	def test_packages_writing
		#packages = Packages.new
		@@packages.write
		file = open("packages.json")
		assert_equal(["a", "abc"].to_json, file.read)
	end
end
