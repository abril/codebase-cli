module CodebaseCli
  version = nil
  version = $1 if ::File.expand_path('../..', __FILE__) =~ /\/codebase-cli-([\w\.\-]+)/
  if version.nil? && ::File.exists?(::File.expand_path('../../../.git', __FILE__))
    require "step-up"
    version = StepUp::Driver::Git.last_version
  end
  version = "0.0.0" if version.nil?
  VERSION = version.gsub(/^v?([^\+]+)\+?\d*$/, '\1')
end
