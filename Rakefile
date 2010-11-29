require 'config/requirements'
require 'config/hoe' # setup Hoe + all gem configuration

require 'spec/rake/spectask'
desc "Run the specs under spec/models"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
end
