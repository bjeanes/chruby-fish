set -x PROJECT "$PWD"
set -x PREFIX "$PROJECT/test"
set -x HOME "$PREFIX/home"

source ./share/chruby/chruby.fish
chruby_reset

set test_ruby_engine "ruby"
set test_ruby_version "2.2.1"
set test_ruby_api "2.2.0"
set test_ruby_root "$PROJECT/test/opt/rubies/$test_ruby_engine-$test_ruby_version"

set test_path $PATH
set test_gem_home "$HOME/.gem/$test_ruby_engine/$test_ruby_version"
set test_gem_root "$test_ruby_root/lib/ruby/gems/$test_ruby_api"

set test_project_dir "$PROJECT/test/project"
