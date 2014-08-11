require "rake/testtask"

task :test => :create_files

task :create_files do
	mkdir File.join("test", "tmp")
	touch File.join("test", "tmp", "abc.json")
	touch File.join("test", "tmp", "packages.json")
	touch File.join("test", "tmp", "a.json")
end

task :clean do
	rm_rf File.join(Dir.pwd, "test", "tmp")
end

task :add_path do
	system 'setx path "%path%;' + File.join(Dir.pwd, "bin") + '"'
end

Rake::TestTask.new do |t|
	t.libs << "tests"
	t.test_files = FileList["test/test*.rb"]
	t.verbose = true
end
