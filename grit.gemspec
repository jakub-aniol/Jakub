Gem::Specification.new do |s|
  s.name = %q{grit}
  s.version = "0.8.2"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Preston-Werner"]
  s.date = %q{2008-06-15}
  s.description = %q{Grit is a Ruby library for extracting information from a git repository in and object oriented manner.}
  s.email = %q{tom@rubyisawesome.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "grit.gemspec", "lib/grit.rb", "lib/grit/actor.rb", "lib/grit/blob.rb", "lib/grit/commit.rb", "lib/grit/config.rb", "lib/grit/diff.rb", "lib/grit/errors.rb", "lib/grit/git.rb", "lib/grit/lazy.rb", "lib/grit/ref.rb", "lib/grit/repo.rb", "lib/grit/tree.rb", "test/fixtures/blame", "test/fixtures/cat_file_blob", "test/fixtures/cat_file_blob_size", "test/fixtures/diff_2", "test/fixtures/diff_2f", "test/fixtures/diff_f", "test/fixtures/diff_i", "test/fixtures/diff_mode_only", "test/fixtures/diff_new_mode", "test/fixtures/diff_p", "test/fixtures/for_each_ref", "test/fixtures/for_each_ref_remotes", "test/fixtures/for_each_ref_tags", "test/fixtures/ls_tree_a", "test/fixtures/ls_tree_b", "test/fixtures/ls_tree_commit", "test/fixtures/rev_list", "test/fixtures/rev_list_count", "test/fixtures/rev_list_single", "test/fixtures/rev_parse", "test/fixtures/show_empty_commit", "test/fixtures/simple_config", "test/helper.rb", "test/profile.rb", "test/suite.rb", "test/test_actor.rb", "test/test_blob.rb", "test/test_commit.rb", "test/test_config.rb", "test/test_diff.rb", "test/test_git.rb", "test/test_head.rb", "test/test_reality.rb", "test/test_repo.rb", "test/test_tag.rb", "test/test_tree.rb", "test/test_real.rb", "test/test_remote.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mojombo/grit}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{grit}
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{Object model interface to a git repo}
  s.test_files = ["test/test_actor.rb", "test/test_blob.rb", "test/test_commit.rb", "test/test_config.rb", "test/test_diff.rb", "test/test_git.rb", "test/test_head.rb", "test/test_real.rb", "test/test_reality.rb", "test/test_remote.rb", "test/test_repo.rb", "test/test_tag.rb", "test/test_tree.rb"]

  s.add_dependency(%q<mime-types>, [">= 0"])
  s.add_dependency(%q<hoe>, [">= 1.5.3"])
end
