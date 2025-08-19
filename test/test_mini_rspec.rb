# $LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
# require "bundler/setup"
require "mini_rspec"

MiniRspec.describe "Math" do
  it "runs a passing test" do
    raise "fail" unless 2 + 2 == 4
  end
end