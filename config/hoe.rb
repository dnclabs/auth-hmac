require 'auth-hmac/version'

AUTHOR = ['Sean Geoghegan', 'ascarter', "Wes Morgan", "Adrian Cushman"]  # can also be an array of Authors
EMAIL = "innovationlab@dnc.org"
DESCRIPTION = "A gem providing HMAC based authentication for HTTP. This is the DNC Labs fork."
GEM_NAME = 'dnclabs-auth-hmac' # what ppl will type to install your gem
HOMEPATH = "http://github.com/dnclabs/auth-hmac/"
RUBYFORGE_PROJECT = ''

REV = '2010090201'
# UNCOMMENT IF REQUIRED:
# REV = YAML.load(`svn info`)['Revision']
VERS = AuthHMAC::VERSION::STRING + (REV ? ".#{REV}" : "")
RDOC_OPTS = ['--quiet', '--title', 'auth-hmac documentation',
    "--opname", "index.html",
    "--line-numbers",
    "--main", "README",
    "--inline-source"]

class Hoe
  def extra_deps
    @extra_deps.reject! { |x| Array(x).first == 'hoe' }
    @extra_deps
  end
end

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.new(GEM_NAME, VERS) do |p|
  p.author = AUTHOR
  p.email = EMAIL
  p.description = DESCRIPTION
  p.summary = DESCRIPTION
  p.url = HOMEPATH
  p.rubyforge_name = RUBYFORGE_PROJECT if RUBYFORGE_PROJECT
  p.test_globs = ["test/**/test_*.rb"]
  p.clean_globs |= ['**/.*.sw?', '*.gem', '.config', '**/.DS_Store']  #An array of file patterns to delete on clean.

  # == Optional
  p.changes = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  #p.extra_deps = EXTRA_DEPENDENCIES

    #p.spec_extras = {}    # A hash of extra values to set in the gemspec.
end
