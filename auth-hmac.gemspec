# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dnclabs-auth-hmac}
  s.version = "1.1.1.2011051301"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Geoghegan", "ascarter", "Wes Morgan", "Adrian Cushman", "Dave Steinberg"]
  s.date = %q{2010-09-02}
  s.description = %q{A gem providing HMAC based authentication for HTTP. This is the DNC Labs fork.}
  s.email = %q{innovationlab@dnc.org}
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/auth-hmac.rb", "lib/auth-hmac/version.rb", "script/console", "script/destroy", "script/generate", "setup.rb", "spec/auth-hmac_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake", "tasks/website.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dnclabs/auth-hmac/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{auth-hmac}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem providing HMAC based authentication for HTTP}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
      s.add_development_dependency(%q<rails>, ["= 2.3.8"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.1"])

      if RUBY_VERSION.gsub('.','').to_i > 190
        s.add_development_dependency(%q<ruby-debug19>)
      else
        s.add_development_dependency(%q<ruby-debug>)
      end
    else
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
