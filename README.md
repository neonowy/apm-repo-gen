apm-repo-generator
==================
[![Build Status](https://travis-ci.org/neonowy/apm-repo-gen.svg?branch=master)](https://travis-ci.org/neonowy/apm-repo-gen) [![Code Climate](https://codeclimate.com/github/neonowy/apm-repo-gen/badges/gpa.svg)](https://codeclimate.com/github/neonowy/apm-repo-gen) [![Dependency Status](https://gemnasium.com/neonowy/apm-repo-gen.svg)](https://gemnasium.com/neonowy/apm-repo-gen)


Generator of packages.json for apm repository.

##Dependencies
1. Ruby >= 1.9.3
2. Bundler (`gem install bundler`)

##Install

###Windows
```
git clone https://github.com/neonowy/apm-repo-gen.git
cd apm-repo-gen
bundle install
rake add_path #Recommended to make a backup of user PATH variable.
```

###Linux
Linux support soon!

##Usage
```
ApmRepoGen [PATH]
[PATH] - path to repository (default current directory)
```

##How to contribute
1. Fork.
2. Commit changes.
3. Check if tests pass.
4. Make a pull request.

##License
```
The MIT License (MIT)

Copyright (c) 2014 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
