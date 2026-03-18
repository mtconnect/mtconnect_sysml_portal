
def versions_for_build
  base = File.expand_path('..', File.dirname(__FILE__))
  config = YAML.load_file(File.join(base, 'build.yml'))
  versions = (ARGV.empty? ? config['build'] : ARGV).map { |v| v.to_s }

  [versions.flat_map do |version|
    if version =~ /[^0-9\.]/
      Dir[File.join(base, "Version#{version}")].map { |d| File.basename(d).sub(/^Version/, '') }
    else
      version
    end
  end, config['production'], config['development']]
end
