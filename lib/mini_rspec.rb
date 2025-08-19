# frozen_string_literal: true

require_relative "mini_rspec/version"

module MiniRspec
  def self.describe(description, &block)
    puts "Test for #{description}"
    instance_eval(&block)
    # context = Context.new(description)
    # context.instance_eval(&block)
    # context.run_tests
  end

  def self.it(desc,&block)
    print " #{desc}..."
    block.call
    puts "PASSED"
  rescue => e
    puts "FAILED (#{e.message})"
  end

  # class Context
  #   def def initialize(description)
  #     @description = description
  #     @tests = []
  #   end
    

  # end
  class Error < StandardError; end
  # Your code goes here...
end
