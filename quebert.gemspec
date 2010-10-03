# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{quebert}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Gessler"]
  s.date = %q{2010-10-03}
  s.description = %q{A worker queue framework built around beanstalkd}
  s.email = %q{brad@bradgessler.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/quebert.rb",
     "lib/quebert/async_sender.rb",
     "lib/quebert/backend.rb",
     "lib/quebert/backend/beanstalk.rb",
     "lib/quebert/backend/in_process.rb",
     "lib/quebert/backend/sync.rb",
     "lib/quebert/configuration.rb",
     "lib/quebert/consumer.rb",
     "lib/quebert/consumer/base.rb",
     "lib/quebert/consumer/beanstalk.rb",
     "lib/quebert/daemonizing.rb",
     "lib/quebert/job.rb",
     "lib/quebert/support.rb",
     "lib/quebert/worker.rb",
     "quebert.gemspec",
     "spec/async_sender_spec.rb",
     "spec/backend_spec.rb",
     "spec/configuration_spec.rb",
     "spec/consumer_spec.rb",
     "spec/job_spec.rb",
     "spec/jobs.rb",
     "spec/quebert_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/worker_spec.rb"
  ]
  s.homepage = %q{http://github.com/bradgessler/quebert}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A worker queue framework built around beanstalkd}
  s.test_files = [
    "spec/async_sender_spec.rb",
     "spec/backend_spec.rb",
     "spec/configuration_spec.rb",
     "spec/consumer_spec.rb",
     "spec/job_spec.rb",
     "spec/jobs.rb",
     "spec/quebert_spec.rb",
     "spec/spec_helper.rb",
     "spec/worker_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<daemons>, [">= 0"])
      s.add_runtime_dependency(%q<beanstalk-client>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<daemons>, [">= 0"])
      s.add_dependency(%q<beanstalk-client>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<daemons>, [">= 0"])
    s.add_dependency(%q<beanstalk-client>, [">= 0"])
  end
end

