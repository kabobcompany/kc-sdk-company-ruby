
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kc-sdk-company/version"

Gem::Specification.new do |spec|
  spec.name          = "kc-sdk-company"
  spec.version       = KcSdkCompany::VERSION
  spec.authors       = ["Yi-Cyuan Chen"]
  spec.email         = ["emn178@gmail.com"]

  spec.summary       = %q{Kabob cloud client library.}
  spec.description   = %q{Kabob cloud client library.}
  spec.homepage      = "https://github.com/kabobcompany/kc-sdk-company-ruby"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/kabobcompany/kc-sdk-company-ruby"
    spec.metadata["changelog_uri"] = "https://github.com/kabobcompany/kc-sdk-company-ruby/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|tmp)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
end
