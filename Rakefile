require 'rake/testtask'

desc "Build the gem"
task :build do
  opers = Dir.glob('*.gem')
  opers = ["rm #{ opers.join(' ') }"] unless opers.empty?
  opers << ["gem build codebase-cli.gemspec"]
  sh opers.join(" && ")
end

desc "Build and install the gem, removing old installation"
task :install => :build do
  gem = Dir.glob('*.gem').first
  if gem.nil?
    puts "could not install the gem"
  else
    sh "gem uninstall codebase-cli; gem install #{ gem }"
  end
end
