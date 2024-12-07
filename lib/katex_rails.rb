# frozen_string_literal: true

require_relative "katex_rails/version"
require "katex_rails/railtie"
require "katex_rails/view_helpers"

module KatexRails
  class Error < StandardError; end
end
