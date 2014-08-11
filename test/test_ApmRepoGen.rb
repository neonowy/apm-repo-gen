require "ApmRepoGen/packages.rb"
require "test/unit"
require "json"

class TestApmRepoGen < Test::Unit::TestCase
	@@pkgs = ApmRepoGen::Packages.new(File.join(Dir.pwd, "test", "tmp"))

	def test_packages
		assert_block do
			if @@pkgs.packages == ["abc", "a"] || @@pkgs.packages == ["a", "abc"]
				return true
			else
				return false
			end
		end
	end

	def test_packages_length
		assert_equal(2, @@pkgs.length)
	end

	def test_packages_writing
		@@pkgs.write
		file = open(File.join(Dir.pwd, "test", "tmp", "packages.json"))
		json = file.read
		assert_block do
			if json == ["abc", "a"].to_json || json == ["a", "abc"].to_json
				return true
			else
				return false
			end
		end
	end
end
