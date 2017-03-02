$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "white_box_testing_examples"
require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
end
