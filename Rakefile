require "rake/testtask"

task :test => :create_files

task :create_files do
	mkdir "test_files"
	touch File.join("test_files", "abc.json")
	touch File.join("test_files", "packages.json")
	touch File.join("test_files", "a.json")
end

task :clean do
	rm_rf "test_files"
end

Rake::TestTask.new do |t|
	t.libs << "tests"
	t.test_files = FileList["test/test*.rb"]
	t.verbose = true
end
