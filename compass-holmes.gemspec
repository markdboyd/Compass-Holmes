Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.1"
  s.date = "2011-04-18"

  # Gem Details
  s.name = "compass-holmes"
  s.authors = ["Mark Boyd"]
  s.summary = %q{An implementation of the Holmes Markup Detective for use with Compass}
  s.description = %q{An implementation of the Holmes Markup Detective for use with Compass}
  s.email = "markdavidboyd@gmail.com"
  s.homepage = "https://github.com/markdboyd/Compass-Holmes"

  # Gem Files
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11"])
end